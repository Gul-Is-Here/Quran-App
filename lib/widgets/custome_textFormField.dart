import "package:flutter/material.dart";
import "package:quran_app/colors/colors.dart";

Widget customTextFormField({
  controller,
  valid,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: SizedBox(
      height: 45,
      child: TextFormField(
        cursorColor: darkGreen,
        controller: controller,
        validator: valid,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    ),
  );
}
