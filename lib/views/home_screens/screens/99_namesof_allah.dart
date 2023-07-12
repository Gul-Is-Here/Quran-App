import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/lists.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/controller/nameofallah_controller.dart';
import 'package:quran_app/widgets/custome_appbar.dart';
import 'package:quran_app/widgets/custome_search.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors/images.dart';

class NamesOfAllahScreen extends StatelessWidget {
  const NamesOfAllahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(NameOfAllahController());
    return Scaffold(body: SafeArea(child: Builder(builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgHomeBg), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(width: 1, color: lightGreen)),
              child: Container(
                height: 45,
                // padding: const EdgeInsets.symmetric(horizontal: ),
                color: whiteColor,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: lightGreen,
                      onPressed: () {
                        Get.back();
                      },
                    ),
                    const SizedBox(width: 50),
                    const Text(
                      "99 Names of Allah",
                      style: TextStyle(
                        color: lightBlack,
                        fontSize: 15,
                        fontFamily: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 140,
                  // crossAxisSpacing: 10,
                ),
                children: List.generate(
                    allahNameList.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            child: Stack(children: [
                              "${controller.index + 1}"
                                  .text
                                  .align(TextAlign.end)
                                  .fontFamily(bold)
                                  .make()
                                  .paddingOnly(left: 135),
                              allahNameList[index]
                                  .text
                                  .fontFamily(alQalam)
                                  .fontWeight(FontWeight.w800)
                                  .size(18)
                                  .makeCentered()
                                  .paddingOnly(
                                    bottom: 40,
                                  ),
                              // 30.heightBox,
                              allahNameListEnglish[index]
                                  .text
                                  .fontFamily(medium)
                                  .size(12)
                                  .color(lightGreen)
                                  .makeCentered(),
                              allahNameMeanings[index]
                                  .text
                                  .fontFamily(medium)
                                  .size(12)
                                  .color(lightBlack)
                                  .makeCentered()
                                  .paddingOnly(top: 50, left: 5),
                            ]),
                          ),
                        )),
              ),
            ),
          )
        ]),
      );
    })));
  }
}
