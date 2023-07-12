import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran_app/widgets/custome_appbar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors/colors.dart';
import '../../../colors/images.dart';
import '../../../colors/styles.dart';

class ShadatScreen extends StatelessWidget {
  const ShadatScreen({super.key});

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
                title: 'Shadat',
                icon: const Icon(
                  Icons.arrow_back,
                  color: darkGreen,
                ).onTap(() {
                  Get.back();
                })),
            10.heightBox,
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: "Arabic"
                          .text
                          .fontFamily(bold)
                          .make()
                          .marginSymmetric(horizontal: 10)),
                  Align(
                    child: SizedBox(
                      height: 80,
                      child: Card(
                        color: lightGreen,
                        elevation: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child:
                              " أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ"
                                  .text
                                  .size(22)
                                  .fontFamily(alQalam)
                                  .color(whiteColor)
                                  .make(),
                        ),
                      ),
                    ),
                  ),
                  30.heightBox,
                  Align(
                      alignment: Alignment.topLeft,
                      child: "English Translation"
                          .text
                          .fontFamily(bold)
                          .make()
                          .marginSymmetric(horizontal: 10)),
                  Align(
                    child: SizedBox(
                      height: 150,
                      child: Card(
                        color: lightGreen,
                        elevation: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child:
                              " I bear witness that there is no god but Allah, and I bear witness that Muhammad is the Messenger of Allah."
                                  .text
                                  .size(18)
                                  .fontFamily(medium)
                                  .color(whiteColor)
                                  .make()
                                  .marginSymmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                  30.heightBox,
                  Align(
                      alignment: Alignment.topLeft,
                      child: "Urdu Translation"
                          .text
                          .fontFamily(bold)
                          .make()
                          .marginSymmetric(horizontal: 10)),
                  Align(
                    child: SizedBox(
                      height: 100,
                      child: Card(
                        color: lightGreen,
                        elevation: 0,
                        child: Align(
                          alignment: Alignment.center,
                          child:
                              "میں گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں اور میں گواہی دیتا ہوں کہ محمد ﷺ اللہ کے رسول ہیں۔"
                                  .text
                                  .size(18)
                                  .fontFamily(janmeelNori)
                                  .color(whiteColor)
                                  .make()
                                  .marginSymmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      );
    })));
  }
}
