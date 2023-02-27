
import 'package:flutter_study/alacarte_design/controller/restaurant_view_controller.dart';
import 'package:get/get.dart';

class RestaurantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestaurantViewController());
  }
}
