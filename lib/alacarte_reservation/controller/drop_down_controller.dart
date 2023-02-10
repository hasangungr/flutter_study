import 'package:get/get.dart';

class DropDownController extends GetxController {
  var index = 0.obs;

  void choosedIndex(var newIndex) {
    index.value = newIndex;
  }
}
