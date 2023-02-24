import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DragDropController extends GetxController {
  var xPosition = 0.0.obs;
  var yPosition = 0.0.obs;

  void positionUpdate(DragUpdateDetails details) {
    xPosition.value += details.delta.dx;
    yPosition.value += details.delta.dy;
    update();
  }
}
