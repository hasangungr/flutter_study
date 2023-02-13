import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/alacarte_reservation/controller/api_controller.dart';
import 'package:flutter_study/alacarte_reservation/model/api/restaurant_model.dart';
import 'package:get/get.dart';

class test extends StatelessWidget {
  const test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestaurantController restaurantController = Get.put(RestaurantController());
    List<RestaurantModel> restList = restaurantController.restaurantList;
    Future<List<DropdownMenuItem<String>>> bisey() async {
      return List.generate(
        restList.length,
        (index) => DropdownMenuItem(
          value: restList[index].restaurantName,
          child: Text(
            restList[index].restaurantName.toString(),
          ),
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(),
        body: Center(child: FutureBuilder<RestaurantModel>(
          builder: (context, snapshot) {
            
            return DropdownButton<String>(
                items: List.generate(
                  restList.length,
                  (index) => DropdownMenuItem(
                    value: restList[index].restaurantName,
                    child: Text(
                      restList[index].restaurantName.toString(),
                    ),
                  ),
                ),
                onChanged: (value) {});
          },
        )));
  }
}
