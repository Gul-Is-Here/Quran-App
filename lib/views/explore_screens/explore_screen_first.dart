import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/views/explore_screens/explore_screen_second.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreScreenFirst extends StatelessWidget {
  const ExploreScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        elevation: 0,
        // ------> APP Icons  getx and velocity_x is used in this app///
        title: Image.asset(
          icLogoWhite,
          width: 100,
        ).p12().box.make(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          15.heightBox,
          // Main title
          "Ahmadiyya Facts".text.center.fontFamily(medium).size(25).bold.make(),
          20.heightBox,
          //  Image used in the screen
          Image.asset(icFirtsImageQuran),
          // 10.heightBox,

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .12),
            // Richtext is used to display text in multiple lines
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "Explore Islam in your hands. Discover the Quran, Hadit, prayer times, and more with Islamic App.",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlack.withOpacity(.7),
                    fontFamily: medium,
                    height: 1.5,
                  ))
            ])),
          ),
          30.heightBox,
          // Forwar to next screen is used
          Image.asset(
            icForward,
            width: 300,
          ).box.make().onTap(() {
            Get.to(() => const ExploreScreenSecond(),
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1));
          })
        ],
      )).box.makeCentered(),
    );
  }
}
