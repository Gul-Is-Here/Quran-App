import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/views/auth_screens/registeration_screen.dart';
import 'package:quran_app/views/explore_screens/explore_screen_second.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreScreenFourth extends StatelessWidget {
  const ExploreScreenFourth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
          " Qibla Direction".text.center.fontFamily(bold).size(25).bold.make(),
          22.heightBox,
          //  Image used in the screen
          Image.asset(
            icCompase,
            width: double.infinity,
            height: MediaQuery.of(context).size.width * .85,
          ).box.p16.make(),
          // 10.heightBox,

          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .12),
            // Richtext is used to display text in multiple lines
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "Never lose your way towards the Qibla. Easily locate the direction of Mecca for accurate prayer alignment with our Qibla Direction Finder feature.",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlack.withOpacity(.6),
                    fontFamily: medium,
                    height: 1.5,
                  ))
            ])),
          ),
          40.heightBox,
          // Forwar to next screen is used
          ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: whiteColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 12)),
                  onPressed: () {
                    Get.to(() => RegistrationScreen(),
                        transition: Transition.downToUp,
                        duration: Duration(seconds: 1));
                  },
                  child: "Get Started"
                      .text
                      .center
                      .fontFamily(medium)
                      .color(darkGreen)
                      .size(18)
                      .bold
                      .make())
              .box
              .roundedSM
              .make()
        ],
      )).box.makeCentered(),
    );
  }
}
