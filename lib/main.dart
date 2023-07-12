import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/views/explore_screens/explore_screen_first.dart';
import 'package:quran_app/views/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Ahmadiyya Facts',
        theme: ThemeData(
          primaryColor: lightGreen,
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: whiteColor),
              backgroundColor: lightGreen),
          // fontFamily: 'Montserrat',
          // textTheme: ThemeData.light().textTheme.copyWith(
          //     bodySmall: const TextStyle(fontFamily: italic),
          //     // titleMedium: TextStyle(fontFamily: italic),
          //     bodyLarge: const TextStyle(
          //       fontFamily: "Montserrat-Semibold",
          //       color: lightGreen,
          //     ),
          //     bodyMedium: const TextStyle(
          //       fontFamily: italic,
          //       fontSize: 20,
          //       color: lightBlack,
          //     ),
          //     titleMedium: const TextStyle(
          //       fontSize: 15,
          //       fontFamily: medium,
          //     ))
        ),
        home: const SplashScreen());
  }
}
