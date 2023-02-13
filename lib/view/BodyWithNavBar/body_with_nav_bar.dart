import 'package:flutter/material.dart';
import 'package:foodshala/constants/color_codes.dart';
import 'package:foodshala/view/Screens/HomeScreen/home_screen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class BodyWithNavBar extends StatefulWidget {
  const BodyWithNavBar({Key? key}) : super(key: key);

  @override
  State<BodyWithNavBar> createState() => _BodyWithNavBarState();
}

class _BodyWithNavBarState extends State<BodyWithNavBar> {
  late PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      Center(child: Text("category")),
      Center(child: Text("shop")),
      Center(child: Text("cart")),
      Center(child: Text("profile")),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home_outlined),
        iconSize: 30,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.category),
        iconSize: 30,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_basket_outlined),
        iconSize: 30,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.shopping_cart),
        iconSize: 30,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.person),
        iconSize: 30,
        activeColorPrimary: primaryColor,
        inactiveColorPrimary: inActiveIconColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      navBarStyle: NavBarStyle.style3,
    );
  }
}
