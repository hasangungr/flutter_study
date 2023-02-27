import 'package:flutter/material.dart';

import 'package:flutter_study/controller_study.dart/controller/home_controller.dart';
import 'package:get/get.dart';

class Another extends GetView<HomeController> {
  const Another({Key? key}) : super(key: key);
//getview getwidget a göre daha az bellek tüketir, ancak tek bir controller kullanılacaksa kullanılmalı

// GetView'da Controller'ların yaşam döngüsü sayfa yaşam döngüsü ile bağlantılı olduğundan,
// gereksiz bellek kullanımını önlemek için Controller'ı sayfa hayat döngüsüne bağlı olarak düzgün bir şekilde sıfırlamak önemlidir.





//GetWidget'ta ise, her widget yeniden oluşturulduğunda (örneğin, uygulama durumu değiştiğinde), eski Controller'ların hafızadan silinmesi için gerekli önlemler alınmalıdır. 
//Ayrıca getWidget her seferinde aynı get.find'ı verir, 
//özetle bir sayfa bir kere kullanılacaksa orada getview kullanılabilir ve sayfayla işimiz bitince hem sayfayı hem controllerı bellekten atmak gerekir





// Temel mantık bir controller sadece dinleniyorsa oluşsun diğer tüm durumlarda bellekten çıksın



//smartmanagement

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        Get.delete<HomeController>();
        return true;
      },
      child: Scaffold(
          body: Center(child: Text(controller.count.value.toString())

              // Text(Get.find<HomeController>().count.value.toString()), //sadece getfind edildiğinde bu controller oluşur
              )));
}
