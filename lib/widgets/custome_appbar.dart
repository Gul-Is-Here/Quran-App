import 'package:flutter/material.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/styles.dart';

Widget customeAppBar(context, {String? title, icon}) {
  return Padding(
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
              icon: icon,
              color: lightGreen,
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
            ),
            const SizedBox(width: 90),
            Align(
              alignment: Alignment.center,
              child: Text(
                textAlign: TextAlign.center,
                "$title",
                style: const TextStyle(
                  color: lightBlack,
                  fontSize: 18,
                  fontFamily: medium,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
