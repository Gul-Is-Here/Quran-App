import 'package:flutter/material.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:velocity_x/velocity_x.dart';

Widget search(context) {
  TextEditingController searchController = TextEditingController();
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: SafeArea(
      child: SizedBox(
        height: 50,
        child: TextFormField(
          cursorColor: lightGreen,
          decoration: InputDecoration(
              hintText: 'tap to search articles',
              hintStyle: TextStyle(
                  color: lightBlack.withOpacity(.3), fontFamily: medium),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: whiteColor)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: whiteColor)),
              filled: true,
              fillColor: whiteColor,
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: darkGreen,
                    size: 35,
                  ))),
        ),
      ),
    ),
  );
}
