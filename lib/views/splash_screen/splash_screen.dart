// import 'package:firebase_auth/firebase_auth.dart';
import 'package:quran_app/colors/colors.dart';
// import 'package:whole_choice_customer/consts/consts.dart';
// import 'package:whole_choice_customer/views/home-screens/home.dart';
// import 'package:whole_choice_customer/widget_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/views/explore_screens/explore_screen_first.dart';
import 'package:velocity_x/velocity_x.dart';
// import 'package:velocity_x/velocity_x.dart';

// import '../../home-screens/home.dart';
// import '../auth_screen/login_screen.dart';
import '../../colors/styles.dart';
import '../../widgets/applogo_widget.dart';
import '../auth_screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Creating a Function For Changing Screen
  changeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      // USing get X
      // Get.to(() => const LoginScreen());

      Get.to(() => const ExploreScreenFirst());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreen,
      body: Column(
        children: [
          const Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 300,
              )),
          // Using Velocity_x
          20.heightBox,
          applogoWidget(),
          10.heightBox,
          "Ahmaddiyya Facts"
              .text
              .fontFamily(medium)
              .bold
              .size(18)
              .white
              .makeCentered(),
          5.heightBox,
          "version: 1.0.0".text.white.fontFamily(medium).make(),
          const Spacer(),
          "Maxsol Technologies".text.white.fontFamily(medium).make(),
          30.heightBox
          // // Our App Splash Screen is Completed
        ],
      ),
    );
  }
}
