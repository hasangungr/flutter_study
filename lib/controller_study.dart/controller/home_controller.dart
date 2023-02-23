import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController
// with WidgetsBindingObserver  = lifecycle
//state mixin

//lifecylcle ile uygulamanın sayfanın yaşam döngüsünü takip ederi
//state mixin ile


//Controllerları sınıflamak çok önemli 



{
  RxInt count = 0.obs;
  

  void increase() {
    if (count != null) {
      count.value = count.value + 1;
    }
  }

  void decrease() {
    if (count != null) {
      count.value = count.value - 1;
    }
  }

  @override
  void onInit() {
    debugPrint("init edildi");

    //controller çağırıldığında çalışır
    super.onInit();
  }

  @override
  void onReady() {
    debugPrint("ready edildi");
    //onInit çalıştığında çalışır
    super.onReady();
  }

  @override
  void onClose() {
    //dispose çalıştığında çalışır
    debugPrint("onclose çalıştı");
    super.onClose();
  }
}
