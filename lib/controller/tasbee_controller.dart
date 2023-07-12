import 'package:get/get.dart';

class TasbeeController extends GetxController {
  RxInt counter = 0.obs;
  var resetCount = 0;
  final int maxCounter = 100;

  void incrementCounter() {
    if (counter < maxCounter) {
      counter++;
    }
  }

  void resetCounter() {
    counter.value = resetCount;
  }
}
