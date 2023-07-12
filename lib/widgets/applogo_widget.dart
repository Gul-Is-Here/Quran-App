import 'package:quran_app/colors/images.dart';
// import 'package:whole_choice_customer/consts/consts.dart';
// import 'package:whole_choice_customer/consts/images.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

import '../colors/colors.dart';

Widget applogoWidget() {
  return Image.asset(
    icLogoGreen,
    filterQuality: FilterQuality.high,
    fit: BoxFit.fitWidth,
  )
      .box
      .white
      .size(100, 100)
      .padding(const EdgeInsets.all(8))
      .color(whiteColor)
      .rounded
      .make();
}
