import 'package:adhan_dart/adhan_dart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:location/location.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/lists.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/controller/home_controller.dart';
import 'package:quran_app/views/home_screens/screens/99_namesof_allah.dart';
import 'package:quran_app/views/home_screens/screens/dail_dua.dart';
import 'package:quran_app/views/home_screens/screens/finality_of_prophethood.dart';
import 'package:quran_app/views/home_screens/screens/hadith.dart';
import 'package:quran_app/views/home_screens/screens/qibla_direction_screen.dart';
import 'package:quran_app/views/home_screens/screens/shadat.dart';
import 'package:quran_app/views/home_screens/screens/tasbee_counter.dart';
import 'package:quran_app/widgets/custome_appbar.dart';
import 'package:quran_app/widgets/custome_drawer.dart';
import 'package:quran_app/widgets/reusable_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      body: SafeArea(
        child: Builder(
          builder: (context) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgHomeBg), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customeAppBar(context,
                    title: 'Home', icon: const Icon(Icons.settings)),
                "My Location"
                    .text
                    .fontFamily(medium)
                    .make()
                    .paddingSymmetric(horizontal: 20),
                TextButton(
                  onPressed: controller.getLocation,
                  child: Obx(() {
                    if (controller.isLoading.value) {
                      return const CircularProgressIndicator(
                        color: lightGreen,
                      );
                    } else {
                      return controller.location.value.text
                          .fontFamily(medium)
                          .size(10)
                          .color(lightGreen)
                          .make()
                          .marginOnly(left: 12, bottom: 15);
                    }
                  }),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        child: Image.asset(homeBg),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 3,
                        child: Column(
                          children: [
                            "أَنَا خَاتَمُ النَّبِيِّينَ لَا نَبِيَّ بَعْدِي"
                                .text
                                .size(20)
                                .color(darkGreen)
                                .bold
                                .fontFamily(alQalam)
                                .make(),
                            "میں نبیوں کا خاتم ہوں، میرے بعد کوئی نبی نہیں۔"
                                .text
                                .fontFamily(janmeelNori)
                                .color(lightBlack.withOpacity(.7))
                                .make(),
                            10.heightBox,
                          ],
                        ),
                      )
                          .box
                          .make()
                          .marginOnly(
                              top: MediaQuery.of(context).size.height * .18)
                          .paddingSymmetric(horizontal: 10),
                    ),
                  ],
                ).box.make().paddingOnly(bottom: 8),

                // ---> Prayer Timing Section  <-------
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      10.heightBox,
                      "Prayer Timing"
                          .text
                          .fontFamily(medium)
                          .size(16)
                          .color(darkGreen)
                          .bold
                          .make()
                          .paddingSymmetric(
                              horizontal:
                                  MediaQuery.of(context).size.height * .01),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          prayerListImages.length,
                          (index) => Image.asset(
                            prayerListImages[index],
                            width: 45,
                            height: 45,
                          ).box.make().marginOnly(
                                left: 10,
                                top: 5,
                              ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                          prayerNameList.length,
                          (index) => prayerNameList[index]
                              .text
                              .fontFamily(medium)
                              .color(lightBlack.withOpacity(.8))
                              .size(10)
                              .makeCentered()
                              .marginOnly(left: 10, top: 2),
                        ),
                      ),
                      FutureBuilder(
                          future: controller.getLoc(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const CircularProgressIndicator(
                                color: lightGreen,
                              );
                            }
                            final myCoordinates =
                                Coordinates(24.860966, 66.990501);
                            final parma = CalculationMethod.Karachi();
                            parma.madhab = Madhab.Shafi;
                            final prayerTime = PrayerTimes(
                                myCoordinates, DateTime.now(), parma);
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  10.widthBox,
                                  Text(
                                    DateFormat.jm()
                                        .format(prayerTime.fajr!.toLocal()),
                                    style: TextStyle(
                                        fontFamily: medium,
                                        fontSize: 12,
                                        color: lightBlack.withOpacity(.8)),
                                  ),
                                  10.widthBox,
                                  Text(
                                    DateFormat.jm()
                                        .format(prayerTime.dhuhr!.toLocal()),
                                    style: TextStyle(
                                        fontFamily: medium,
                                        fontSize: 12,
                                        color: lightBlack.withOpacity(.8)),
                                  ),
                                  10.widthBox,
                                  Text(
                                    DateFormat.jm()
                                        .format(prayerTime.asr!.toLocal()),
                                    style: TextStyle(
                                        fontFamily: medium,
                                        fontSize: 12,
                                        color: lightBlack.withOpacity(.8)),
                                  ),
                                  10.widthBox,
                                  Text(
                                    DateFormat.jm()
                                        .format(prayerTime.maghrib!.toLocal()),
                                    style: TextStyle(
                                        fontFamily: medium,
                                        fontSize: 12,
                                        color: lightBlack.withOpacity(.8)),
                                  ),
                                  5.widthBox,
                                  Text(
                                    DateFormat.jm()
                                        .format(prayerTime.isha!.toLocal()),
                                    style: TextStyle(
                                        fontFamily: medium,
                                        fontSize: 12,
                                        color: lightBlack.withOpacity(.8)),
                                  )
                                ],
                              ),
                            );
                          })
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: List.generate(
                      //     prayerTimeList.length,
                      //     (index) => Expanded(
                      //       child: prayerTimeList[index]
                      //           .text
                      //           .fontFamily(medium)
                      //           // .fontWeight(FontWeight.w400)
                      //           .color(lightBlack.withOpacity(.7))
                      //           .size(1)
                      //           .make()
                      //           .marginOnly(
                      //               left: MediaQuery.of(context).size.height *
                      //                   .01,
                      //               top: MediaQuery.of(context).size.height *
                      //                   .008,
                      //               bottom: MediaQuery.of(context).size.height *
                      //                   .02),
                      //     ),
                      //   ),
                      // )
                    ],
                  ),
                )
                    .box
                    .make()
                    .marginOnly(top: MediaQuery.of(context).size.height * .0)
                    .paddingSymmetric(horizontal: 10),
                5.heightBox,
                "Explore More"
                    .text
                    .size(16)
                    .color(darkGreen)
                    .fontFamily(medium)
                    .bold
                    .make()
                    .paddingSymmetric(
                        horizontal: MediaQuery.of(context).size.height * .02),
                5.heightBox,
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const KhatmeNabuatScreen());
                            },
                            child: exploreWidgets(index: 0),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const NamesOfAllahScreen());
                            },
                            child: exploreWidgets(index: 4),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const QiblahScreen());
                            },
                            child: exploreWidgets(index: 2),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(() => TasbeeScreen());
                            },
                            child: exploreWidgets(index: 3),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          20.widthBox,
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1),
                            child: GestureDetector(
                              onTap: () {
                                Get.to(() => const DailyDuaScreen());
                              },
                              child: exploreWidgets(index: 1),
                            ),
                          ),
                          40.widthBox,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const ShadatScreen());
                            },
                            child: exploreWidgets(index: 5),
                          ),
                          35.widthBox,
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const HadithScreen());
                            },
                            child: exploreWidgets(index: 6),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      endDrawer: customDrawer(context, name: "Gul Faraz Ahmed"),
    );
  }
}
