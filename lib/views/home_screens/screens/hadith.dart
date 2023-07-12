import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/widgets/custome_appbar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors/colors.dart';
import '../../../colors/images.dart';
import '../../../colors/styles.dart';

class HadithScreen extends StatelessWidget {
  const HadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Builder(builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgHomeBg), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            customeAppBar(context,
                title: 'Hadith',
                icon: const Icon(
                  Icons.arrow_back,
                  color: darkGreen,
                ).onTap(() {
                  Get.back();
                })),
            10.heightBox,
            Expanded(
              child: ListView(
                children: List.generate(
                    99,
                    (index) => Padding(
                          padding: const EdgeInsets.all(12),
                          child: Card(
                            child: Stack(children: [
                              "${index + 1}"
                                  .text
                                  .align(TextAlign.end)
                                  .fontFamily(bold)
                                  .size(18)
                                  .make()
                                  .paddingSymmetric(horizontal: 5),
                              // 20.heightBox,

                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    "أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ"
                                        .text
                                        .fontFamily(alQalam)
                                        .fontWeight(FontWeight.w800)
                                        .size(20)
                                        .color(darkGreen)
                                        .makeCentered()
                                        .paddingOnly(
                                          top: 20,
                                        ),
                              ),
                              "Abu Hurairah narrated that the Messenger of Allah (ﷺ) said: 'There is no prophet after me.'"
                                  .text
                                  .fontFamily(medium)
                                  .size(12)
                                  .color(lightBlack)
                                  .make()
                                  .paddingOnly(top: 60, left: 5),
                            ]),
                          ),
                        )),
              ),
            )
          ],
        ),
      );
    })));
  }
}
