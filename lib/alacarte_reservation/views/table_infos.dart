// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

import 'package:flutter_study/alacarte_reservation/controller/api_controller.dart';
import 'package:flutter_study/alacarte_reservation/model/api/restaurant_model.dart';

import 'package:get/get.dart';

class TableInfosView extends StatelessWidget {
  const TableInfosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestaurantController restaurantController = Get.find();
    List<RestaurantModel> _httpRestList = restaurantController.restaurantList;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
      body: Center(
        child: Text(_httpRestList.toList().toString())
      ),
    );
  }


  textWidget(){
  return TextButton(
            child: const Text("TABLE INFOS SCREEN"),
            onPressed: () {
              Get.back();
              Get.showSnackbar(
                GetSnackBar(
                  title: "Test",
                  message: "showSnackBar",
                  duration: const Duration(seconds: 1),
                  mainButton: ElevatedButton(
                      onPressed: () {
             //           Get.to(test());
                      },
                      child: const Text("Dön Geri")),
                ),
              );
            });
  }
}
