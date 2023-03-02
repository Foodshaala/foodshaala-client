import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/controllers/screen_controller.dart';
import 'package:foodshala/services/auth_service.dart';
import 'package:foodshala/view/Screens/BodyWithNavBar/components/custom_nav_bar.dart';
import 'package:foodshala/view/Screens/HomeScreen/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:provider/provider.dart';

import '../../../constants/device_size.dart';
import 'components/CustomAppBar.dart';
import 'components/addressBar.dart';
import 'components/searchBar.dart';

class BodyWithNavBar extends StatefulWidget {
  const BodyWithNavBar({Key? key}) : super(key: key);

  @override
  State<BodyWithNavBar> createState() => _BodyWithNavBarState();
}

class _BodyWithNavBarState extends State<BodyWithNavBar> {
  late PersistentTabController _controller =
  PersistentTabController(initialIndex: 0);

  // late TabController tabController;
  // @override
  // void initState() {
  //   super.initState();
  //   tabController = TabController(
  //     initialIndex: 0,
  //     length: 2,
  //     vsync: this,
  //   );
  // }

  Widget _buildScreens(int index) {
    List<Widget> screens = [
      HomeScreen(),
      Center(child: Text("grid")),
      Center(child: Text("Restaurants")),
      Center(child: Text("Cart")),
      Center(child: Text("Profile")),
    ];
    return screens[index];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Center(child: FaIcon(FontAwesomeIcons.house)),
        iconSize: 25,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Center(child: FaIcon(FontAwesomeIcons.grip)),
        iconSize: 30,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Center(child: FaIcon(FontAwesomeIcons.shop)),
        iconSize: 25,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Center(child: FaIcon(FontAwesomeIcons.cartShopping)),
        iconSize: 25,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Center(child: FaIcon(FontAwesomeIcons.user)),
        iconSize: 25,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final screenController = Provider.of<ScreenController>(context);
    Widget _buildPage() {
      return SafeArea(
        child: Builder(builder: (context) {
          return CustomScrollView(
            slivers: [
              SliverOverlapInjector(
                  handle:
                  NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                          (context, index) =>
                          _buildScreens(screenController.currScreenIndex),
                      childCount: 1)),
            ],
          );
        }),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverSafeArea(
                top: false,
                sliver: SliverAppBar(
                  snap: true,
                  floating: true,
                  pinned: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  flexibleSpace: CustomAppBar(),
                  bottom: PreferredSize(
                      child: CustomBottomAppBar(),
                      preferredSize: Size.fromHeight(62)),
                ),
              ),
            ),
          ],
          body: _buildPage(),
        ),
        bottomNavigationBar: CustomNavBarWidget(
          selectedIndex: screenController.currScreenIndex,
          items: _navBarItems(),
          onItemSelected: (value) {
            screenController.currScreenIndex = value;
          },
        ),
      ),
    );
  }
}
// PersistentTabView(
// context,
// controller: _controller,
// screens: _buildScreens(),
// items: _navBarItems(),
// navBarStyle: NavBarStyle.style3,
// ),
