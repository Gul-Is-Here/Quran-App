import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/widgets/custome_appbar.dart';
import 'package:quran_app/widgets/custome_search.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors/images.dart';

class KhatmeNabuatScreen extends StatelessWidget {
  const KhatmeNabuatScreen({super.key});

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
                title: 'Article',
                icon: const Icon(
                  Icons.arrow_back,
                  color: darkGreen,
                ).onTap(() {
                  Get.back();
                })),
            10.heightBox,
            search(context),
            10.heightBox,
            Expanded(
              child: ListView(
                children: List.generate(
                    9,
                    (index) => Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Card(
                            // margin: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child:
                                      ' Question No ${index + 1}:  kjasdhalsdhkasjdhkashksdhsdha'
                                          .text
                                          .fontFamily(bold)
                                          .color(darkGreen)
                                          .size(16)
                                          .make(),
                                ),
                                10.heightBox,
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      textAlign: TextAlign.right,
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "مرزا غلام احمد قادیانی کے جھوٹ  ",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: lightBlack,
                                              fontFamily: janmeelNori,
                                              height: 1,
                                            )),
                                        TextSpan(
                                            text:
                                                '(جھوٹ ۴… جہاں بھی توفی ہے وہاں معنی موت ہیں)',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: darkGreen,
                                              fontFamily: janmeelNori,
                                              height: 1,
                                            )),
                                        TextSpan(
                                            text:
                                                '‘‘قرآن شریف میں اوّل سے آخر تک جس جس جگہ توفی کا لفظ آیا ہے۔ ان تمام مقامات میں توفی کے معنی موت ہی لئے گئے ہیں۔’’',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: lightBlack,
                                              fontFamily: janmeelNori,
                                              height: 1,
                                            )),
                                        TextSpan(
                                            text:
                                                '\n(ازالہ اوہام ص۲۴۷، خزائن ج۳ ص۲۲۴ حاشیہ)\n',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: darkGreen,
                                              fontFamily: janmeelNori,
                                              height: 1,
                                            )),
                                        TextSpan(
                                            text:
                                                'ابوعبیدہ: مرزاقادیانی! یہ آپ کا صریح جھوٹ اور دھوکہ ہے۔ کیا آپ نے قرآن شریف میں ’’ وھو الذی یتوفّٰی کم باللیل ‘‘ نہیں پڑھا۔ اس کے معنی موت کے کون عقلمند کر سکتا ہے؟ اسی قسم کی اور کئی آیات ہیں۔ جہاں موت کے معنی کرنے ناممکن ہیں۔',
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: lightBlack,
                                              fontFamily: janmeelNori,
                                              height: 1,
                                            )),
                                      ])),
                                ),
                                const Divider(),
                                //----> Row <---
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    TextButton.icon(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text('Image'),
                                                content: Image.asset(
                                                    imgHomeBg), // Replace with your image asset
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: 'close'
                                                        .text
                                                        .color(lightGreen)
                                                        .make(),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.image,
                                          color: lightGreen,
                                        ),
                                        label: "Click on icon\nto view image"
                                            .text
                                            .color(lightGreen)
                                            .fontFamily(medium)
                                            .size(5)
                                            .make()),
                                    TextButton.icon(
                                        onPressed: () {
                                          // Handle play audio tap
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: const Text('Play Audio'),
                                                content: const Text(
                                                    'Audio is playing...'), // Replace with your audio player widget
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: 'close'
                                                        .text
                                                        .color(lightGreen)
                                                        .make(),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.headphones,
                                          color: lightGreen,
                                        ),
                                        label: "Click to listen\naudio track"
                                            .text
                                            .fontFamily(medium)
                                            .color(lightGreen)
                                            .size(5)
                                            .make()),
                                    GestureDetector(
                                      onTap: () {
                                        // Handle share button tap
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                AlertDialog(
                                                  title: const Text('Share'),
                                                  content: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      const Text('Share on:'),
                                                      const SizedBox(
                                                          height: 10),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          GestureDetector(
                                                            onTap: () {
                                                              // Handle share on Facebook
                                                              print(
                                                                  'Share on Facebook');
                                                            },
                                                            child: const Icon(
                                                                Icons.facebook),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              // Handle share on Twitter
                                                              print(
                                                                  'Share on Twitter');
                                                            },
                                                            child: const Icon(Icons
                                                                .two_k_outlined),
                                                          ),
                                                          GestureDetector(
                                                            onTap: () {
                                                              // Handle share on WhatsApp
                                                              print(
                                                                  'Share on WhatsApp');
                                                            },
                                                            child: const Icon(Icons
                                                                .whatshot_sharp),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      const Text(
                                                          'Link: https://example.com'), // Replace with your link
                                                    ],
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: 'close'
                                                          .text
                                                          .color(lightGreen)
                                                          .make(),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      child: const Icon(
                                        Icons.share,
                                        color: lightGreen,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
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
