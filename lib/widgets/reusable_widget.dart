import 'package:flutter/material.dart';

import '../colors/lists.dart';
import '../colors/styles.dart';

Widget exploreWidgets({int? index}) {
  return Column(
    children: [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(7),
          child: Image.asset(
            iconList[index!],
            width: 41,
            height: 41,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: FittedBox(
          fit: BoxFit.contain,
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 1),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                overflow: TextOverflow.fade,
                iconsLisName[index], // Replace with your desired text
                style: const TextStyle(
                  fontSize: 10,
                  fontFamily: medium,
                ),
              ),
            ),
          ),
        ),
      )
    ],
  );
}
