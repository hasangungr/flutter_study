import 'package:flutter_study/controller_study.dart/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(), fenix: true); //fenix = true ise, önceki kullanılan controller kaldırılır yenisini ekleriz
  }
}
