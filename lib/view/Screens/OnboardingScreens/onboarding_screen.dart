import 'package:flutter/material.dart';
import 'package:foodshala/constants/device_size.dart';
import 'package:foodshala/view/Common/custom_button.dart';
import 'package:foodshala/view/Screens/OnboardingScreens/components/dot_indicator.dart';

import '../../../constants/color_codes.dart';
import 'components/onboarding_content.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  "Skip",
                  style: TextStyle(color: primaryColor),
                ),
              )
            ],
          ),
          Expanded(
              child: PageView.builder(
            controller: _pageController,
            itemBuilder: (context, index) => OnboardingContent(
              image: data[index].image,
              title: data[index].title,
              body: data[index].body,
            ),
            itemCount: data.length,
            onPageChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
          )),
          _pageIndex < 3
              ? SizedBox(
                  height: 60,
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(
                          data.length-1,
                          (index) => Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child:
                                    DotIndicator(active: index == _pageIndex),
                              ))
                    ],
                  ))
              : CustomRectButton(
                  text: "Get Moody",
                  fontSize: 17,
                  callBack: () {},
                  width: displayWidth(context)*0.9,
                ),
          SizedBox(height: 40,),
        ],
      ),
    ));
  }
}

class Onboard {
  String title;
  String body;
  String image;
  Onboard({
    required this.image,
    required this.title,
    required this.body,
  });
}

final data = [
  Onboard(
    image: "assets/images/chefbro.png",
    title: "All your favourites restaurants",
    body:
        "Order from the best local \n restaurants \n with ease and on-demand delivery",
  ),
  Onboard(
    image: "assets/images/girl.png",
    title: "Unmatched reliability",
    body: "Experience peace of mind while \ntracking your order in real time",
  ),
  Onboard(
    image: "assets/images/shop.png",
    title: "24/7 support for you",
    body: "Something came up? Talk to a real \nperson. We are here to help",
  ),
  Onboard(
    image: "assets/images/customer.png",
    title: "Eat it in your \nown cozy comfort",
    body:
        "Want a food of your mood?\nGet your tummies filled with the \nedible good",
  ),
];
