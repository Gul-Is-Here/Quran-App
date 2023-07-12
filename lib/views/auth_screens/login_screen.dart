import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/views/home_screens/home_screen.dart';
import 'package:quran_app/widgets/custome_text.dart';
import 'package:quran_app/widgets/custome_textFormField.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: darkGreen,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.white.withOpacity(0.3), BlendMode.dstATop),
                  image: const AssetImage(loginBg),
                ),
              ),
              child: SafeArea(
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      icLogoWhite,
                      width: 100,
                    )).box.p12.make(),
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
            child: Align(
              alignment: Alignment.topLeft,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Login"
                        .text
                        .bold
                        .fontFamily(medium)
                        .size(24)
                        .make()
                        .paddingSymmetric(vertical: 20),
                    //custome user name filed
                    customeText(title: " Username"),
                    customTextFormField(
                        controller: emailContoller,
                        valid: (value) {
                          if (value.isEmpty || value!.contains(".com")) {
                            return "Enter valid email";
                          }
                        }),
                    // Custome password Field
                    20.heightBox,
                    customeText(title: " Password"),
                    customTextFormField(
                        controller: emailContoller,
                        valid: (value) {
                          if (value.isEmpty || value.length < 6) {
                            return "Enter valid email";
                          }
                        }),
                    10.heightBox,
                    // Forget password and Click here

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          "Forget Password? "
                              .text
                              .color(lightBlack.withOpacity(.6))
                              .size(13)
                              .fontFamily(medium)
                              .make()
                          // .paddingSymmetric(horizontal: 15)
                          ,
                          'Click here'
                              .text
                              .color(darkGreen)
                              .bold
                              .fontFamily(medium)
                              .size(13)
                              .make()
                        ],
                      ),
                    ),
                    20.heightBox,
                    //-------------> Login Button <-------------
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: darkGreen,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 90, vertical: 13)),
                              onPressed: () {
                                Get.offAll(() => HomeScreen(),
                                    transition: Transition.upToDown,
                                    duration: const Duration(seconds: 1));
                              },
                              child: "Login"
                                  .text
                                  .center
                                  .fontFamily(medium)
                                  .color(whiteColor)
                                  .size(18)
                                  .bold
                                  .make())
                          .box
                          .makeCentered(),
                    ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        "or"
                            .text
                            .fontFamily(medium)
                            .color(lightBlack.withOpacity(.6))
                            .size(15)
                            .bold
                            .make()
                            .paddingSymmetric(horizontal: 15),
                        'Register as a new user'
                            .text
                            .fontFamily(medium)
                            .center
                            .color(lightGreen)
                            .size(14)
                            .underline
                            .make()
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
