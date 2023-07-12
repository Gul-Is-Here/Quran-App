import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/views/explore_screens/explore_screen_fouth.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreScreenThird extends StatelessWidget {
  const ExploreScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Image.asset(
          icLogoWhite,
          width: 100,
        ).p12().box.make(),
      ),
      body: SafeArea(
          child: Column(
        children: [
          15.heightBox,
          "Prayer Time Reminder"
              .text
              .center
              .fontFamily(medium)
              .size(25)
              .bold
              .make(),
          20.heightBox,
          Image.asset(
            icSecondPageImage,
            height: 350,
          ),
          15.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .12),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "Stay consistent in your prayers. Our Prayer Reminder feature provides gentle prompts, helping you maintain a dedicated prayer routine effortlessly",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlack.withOpacity(.6),
                    fontFamily: medium,
                    height: 1.5,
                  ))
            ])),
          ),
          45.heightBox,
          Image.asset(
            icForward,
            width: 300,
          ).onTap(() {
            Get.to(() => ExploreScreenFourth(),
                transition: Transition.rightToLeft,
                duration: Duration(seconds: 1));
          })
        ],
      )).box.makeCentered(),
    );
  }
}
