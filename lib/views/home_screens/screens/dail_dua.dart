import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran_app/colors/lists.dart';
import 'package:quran_app/widgets/custome_appbar.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors/colors.dart';
import '../../../colors/images.dart';
import '../../../colors/styles.dart';
import '../../../widgets/custome_search.dart';

class DailyDuaScreen extends StatelessWidget {
  const DailyDuaScreen({super.key});

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
                title: 'Dua',
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
                    duaName.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  height: 50,
                                  child: Card(
                                    elevation: 0,
                                    // margin: EdgeInsets.symmetric(horizontal: 4),
                                    color: lightGreen,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Center(
                                        child: '${index + 1}-${duaName[index]}'
                                            .text
                                            .fontFamily(bold)
                                            .color(whiteColor)
                                            .size(13)
                                            .make(),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // 10.heightBox,
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14.0, vertical: 5),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: duaArabic[index]
                                        .text
                                        .fontFamily(alQalam)
                                        .bold
                                        .align(TextAlign.right)
                                        .size(18)
                                        .make(),
                                  )),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: RichText(
                                    textDirection: TextDirection.ltr,
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: duaEnglis[index],
                                          style: const TextStyle(
                                              color: lightBlack,
                                              fontFamily: medium)),
                                      // TextSpan(
                                      //     text: '[Tirmizi Shareef Vol.2 Pg.180]',
                                      //     style: TextStyle(
                                      //         fontSize: 10,
                                      //         color: lightBlack,
                                      //         fontFamily: medium))
                                    ])),
                              ),
                              10.heightBox,
                              Divider(),
                            ],
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
