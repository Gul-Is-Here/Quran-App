import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/views/explore_screens/explore_screen_third.dart';
import 'package:velocity_x/velocity_x.dart';

class ExploreScreenSecond extends StatelessWidget {
  const ExploreScreenSecond({super.key});

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
          "Finality Of Prophetood"
              .text
              .center
              .fontFamily(medium)
              .size(25)
              .bold
              .make(),
          20.heightBox,
          Image.asset(
            icKatmeyNabuat2,
            width: double.infinity,
            height: 350,
          ),
          10.heightBox,
          "أَنَا خَاتَمُ النَّبِيِّينَ لَا نَبِيَّ بَعْدِي"
              .text
              .color(whiteColor)
              .size(32)
              .bold
              .fontFamily(alQalam)
              .make(),
          15.heightBox,
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * .12),
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text:
                      "I am the last of the prophets, there is no prophet after me. ",
                  style: TextStyle(
                    fontSize: 16,
                    color: lightBlack.withOpacity(.6),
                    fontFamily: medium,
                    height: 1.5,
                  ))
            ])),
          ),
          53.heightBox,
          Image.asset(
            icForward,
            width: 300,
          ).onTap(() {
            Get.to(() => ExploreScreenThird(),
                transition: Transition.rightToLeft,
                duration: Duration(seconds: 1));
          })
        ],
      )).box.makeCentered(),
    );
  }
}
