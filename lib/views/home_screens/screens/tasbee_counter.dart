import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:quran_app/colors/colors.dart';
import 'package:quran_app/colors/styles.dart';
import 'package:quran_app/controller/tasbee_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../../colors/images.dart';

class TasbeeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(TasbeeController());
    return Scaffold(
        body: SafeArea(
            child: Builder(
      builder: (context) => Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imgHomeBg), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
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
                        icon: const Icon(Icons.arrow_back),
                        color: lightGreen,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      const SizedBox(width: 50),
                      const Text(
                        "Tasbih Counter",
                        style: TextStyle(
                          color: lightBlack,
                          fontSize: 15,
                          fontFamily: medium,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            30.heightBox,
            // "لَا إِلَهَ إِلَّا اللَّٰهُ مُحَمَّدٌ رَسُولُ اللَّٰهِ."
            //     .text
            //     .color(darkGreen)
            //     .fontFamily(alQalam)
            //     .size(28)
            //     .make(),
            10.heightBox,
            GestureDetector(
              onTap: controller.incrementCounter,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .8,
                    height: MediaQuery.of(context).size.height * .5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                  ),
                  Obx(
                    () => SizedBox(
                      width: MediaQuery.of(context).size.width * .8,
                      height: MediaQuery.of(context).size.height * .5,
                      child: CustomPaint(
                        painter: CircleLinePainter(
                          lineColor: darkGreen,
                          lineWidth: 25,
                          fraction: controller.counter / controller.maxCounter,
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => Text(
                      '${controller.counter}/${controller.maxCounter}',
                      style: const TextStyle(
                          fontSize: 30, color: darkGreen, fontFamily: medium),
                    ),
                  ),
                ],
              ),
            ),
            // ------> Tap to Increment and Reset Buttons <---------------
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: lightGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: controller
                        .incrementCounter, // Added incrementCounter as the onPressed callback
                    child: 'Tap to count'
                        .text
                        .fontFamily(medium)
                        .color(whiteColor)
                        .make(),
                  ),
                ),
                // SizedBox(heiht: 20),
                SizedBox(
                  height: 35,
                  child: TextButton.icon(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.redAccent),
                    onPressed: controller.resetCounter,
                    label: 'Reset'.text.color(whiteColor).make(),
                    icon: Icon(
                      Icons.refresh,
                      color: whiteColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    )));
  }
}

class CircleLinePainter extends CustomPainter {
  final Color lineColor;
  final double lineWidth;
  final double fraction;

  CircleLinePainter({
    required this.lineColor,
    required this.lineWidth,
    required this.fraction,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - lineWidth / 2;
    const startAngle = -0.5 * 3.14;
    final sweepAngle = fraction * 2 * 3.14;

    final paint = Paint()
      ..color = lineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = lineWidth;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
