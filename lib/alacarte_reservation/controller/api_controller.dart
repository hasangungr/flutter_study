import 'dart:convert';

import 'package:flutter_study/alacarte_reservation/model/api/restaurant_model.dart';
import 'package:get/get.dart';
import "package:http/http.dart" as http;

class RestaurantController extends GetxController {
  var restaurantList = <RestaurantModel>[].obs;
  var isLoading = true.obs;

////
//BURAYI İYİ ÖĞREN/
////
    fetchData() async {
    try {
      http.Response response = await http.get(Uri.parse( //1. aşama
          "https://study-reservation-alacarte-default-rtdb.firebaseio.com/data.json"));

      if (response.statusCode == 200) {
        final List result = jsonDecode(response.body);
        restaurantList.value =
            result.map((e) => RestaurantModel.fromJson(e)).toList();
        isLoading.value = false;
        
        
        update();
        
      } else {
        Get.snackbar("Error Loading Data!",
            "Server Responed: ${response.statusCode}: ${response.reasonPhrase}");
      }
    } catch (e) {
   //   print("Error");
    } finally {}
  }

  @override
  void onInit() {
    //bu kontroller oluşturulduğunda çağırıldığında bir kez bu func çalışır
    super.onInit();
    fetchData();
  }
}
