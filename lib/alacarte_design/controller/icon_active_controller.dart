import 'package:get/get.dart';

class ActiveIconController extends GetxController {
  RxList<bool> isActive = RxList<bool>.filled(6, false);

  void changeIsActive(int index) {
    isActive[index] = !isActive[index];
  }
}
