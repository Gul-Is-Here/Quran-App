import 'package:flutter/material.dart';
import 'package:quran_app/colors/styles.dart';

import '../colors/colors.dart';

Widget customeText({String? title}) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "$title",
        style: TextStyle(
            fontFamily: medium,
            fontSize: 13,
            color: lightBlack.withOpacity(.6)),
      ),
    ),
  );
}
