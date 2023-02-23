import 'package:flutter/material.dart';
import 'package:flutter_study/controller_study.dart/controller/home_controller.dart';
import 'package:flutter_study/controller_study.dart/routes/routes.dart';

import 'package:flutter_study/controller_study.dart/views/anothet_get_to_view.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  final HomeController _homeController = Get.put(HomeController());
  //getx smart management
  //default olarak controllerlar otomatik silinir ama serviceler silinmez



  //SMART MANAGEMENT ÇOK ÖNEMLİ 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        //leading: Text("data"),
      ),
      body: Center(
        child: Obx(
          () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(_homeController.count.value.toString()),
              ElevatedButton(
                child: Text("Named"),
                onPressed: () {
                  Get.toNamed(Routes.getAnotherGetToView());
                 //_homeController.onDelete();
                  Get.delete<HomeController>();
                    _homeController.onClose();
                    
                  //   _homeController
                  //     .dispose(); //Sayfayı dispose ettiysen artık bu sayfaya dönmemelisini ve geçmişide silmelisin
                  //onclose kullanmak gerekiyor
                },
              ),
              ElevatedButton(
                  child: Text("No Dispose"),
                  onPressed: () {
                    //    _homeController.onClose();
                    Get.toNamed(Routes.getAnotherGetToView());
                  }),
              ElevatedButton(
                onPressed: () => _homeController.decrease(),
                child: Text("-"),
              ),
              ElevatedButton(
                onPressed: () => _homeController.increase(),
                child: Text("+"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
