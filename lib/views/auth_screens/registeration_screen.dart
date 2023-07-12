import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/views/auth_screens/login_screen.dart';
import 'package:quran_app/widgets/custome_text.dart';
import 'package:quran_app/widgets/custome_textFormField.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../colors/styles.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: whiteColor,
        elevation: 0,
        title: Image.asset(
          icLogoGreen,
          width: 100,
        ).box.alignCenterLeft.make(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            "Create Your Account"
                .text
                .center
                .fontFamily(medium)
                .size(22)
                .bold
                .make(),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 2,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    20.heightBox,
                    Row(
                      children: [
                        customeText(title: "First Name*"),
                        60.widthBox,
                        customeText(title: "Last Name*"),
                      ],
                    ),
                    // First Name and last Name TextField in Row and also added their title in top of them in row
                    Row(
                      children: [
                        Expanded(
                          child: customTextFormField(
                              controller: firstNameController,
                              valid: (value) {
                                if (value.length < 3) {
                                  return "Enter First name";
                                }
                              }),
                        ),
                        Expanded(
                          child: customTextFormField(
                              controller: lastNameController,
                              valid: (value) {
                                if (value.length < 3) {
                                  return "Enter valid last name";
                                }
                              }),
                        )
                      ],
                    ),
                    20.heightBox,
                    customeText(title: "Email*"),
                    customTextFormField(
                        controller: emailController,
                        valid: (value) {
                          if (value.isEmpty || value!.contains(".com")) {
                            return "Enter valid email";
                          }
                        }),
                    20.heightBox,
                    customeText(title: "Phone*"),
                    customTextFormField(
                        controller: phoneController,
                        valid: (value) {
                          if (value.length < 11) {
                            return "Enter valid Phone number";
                          }
                        }),
                    20.heightBox,
                    customeText(title: "Password*"),
                    customTextFormField(
                        controller: passwordController,
                        valid: (value) {
                          if (value.length < 6) {
                            return "Enter valid password";
                          }
                        }),
                    20.heightBox,
                    customeText(title: "Confirm Password*"),
                    customTextFormField(
                        controller: confirmpasswordController,
                        valid: (value) {
                          if (confirmpasswordController == passwordController) {
                            return "Password Does not match";
                          } else if (value.length < 3 || value.isEmpty) {
                            return "Enter valid Password";
                          }
                        }),
                    40.heightBox
                  ],
                ),
              ),
            ).box.p16.make(),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: darkGreen,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 14)),
                onPressed: () {
                  Get.to(() => LoginScreen(),
                      transition: Transition.upToDown,
                      duration: const Duration(seconds: 1));
                },
                child: "Let's Go"
                    .text
                    .center
                    .color(whiteColor)
                    .size(16)
                    .fontFamily(medium)
                    .bold
                    .make()),
            20.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Already have an account?"
                    .text
                    .color(lightBlack.withOpacity(.6))
                    .bold
                    .fontFamily(medium)
                    .size(12)
                    .underline
                    .make(),
                ' login here'
                    .text
                    .color(lightGreen)
                    .fontFamily(medium)
                    .underline
                    .size(12)
                    .bold
                    .make()
              ],
            )
          ],
        )).box.makeCentered(),
      ),
    );
  }
}
