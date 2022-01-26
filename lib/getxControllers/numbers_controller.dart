import 'package:get/get.dart';

class NumbersController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
