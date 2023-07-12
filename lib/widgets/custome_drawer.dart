import 'package:flutter/material.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/images.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:velocity_x/velocity_x.dart';

Widget customDrawer(context, {String? name}) {
  final AnimationController animationController = AnimationController(
    vsync: Navigator.of(context),
    duration: const Duration(milliseconds: 300),
  );

  final Animation<Offset> offsetAnimation = Tween<Offset>(
    begin: const Offset(-1, 0),
    end: Offset.zero,
  ).animate(
    CurvedAnimation(
      parent: animationController,
      curve: Curves.easeOut,
    ),
  );

  return SlideTransition(
    position: offsetAnimation,
    child: Drawer(
      width: MediaQuery.of(context).size.width / 2,
      child: Container(
        color: whiteColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width * .9,
              color: lightGreen,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(icFirtsImageQuran),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Account',
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: medium,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    "$name".text.fontFamily(medium).make()
                  ],
                ),
              ),
            ),
            ListTile(
              leading: "Profile Setting".text.fontFamily(medium).make(),
              title: const Icon(Icons.settings),
              onTap: () {
                // Handle drawer item tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: "About Us".text.fontFamily(medium).make(),
              title: const Icon(Icons.info_outline),
              onTap: () {
                // Handle drawer item tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: "Log out".text.fontFamily(medium).make(),
              title: const Icon(Icons.logout_outlined),
              onTap: () {
                // Handle drawer item tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    ),
  );
}
