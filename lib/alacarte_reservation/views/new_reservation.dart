import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/alacarte_reservation/controller/api_controller.dart';
import 'package:flutter_study/alacarte_reservation/model/api/restaurant_model.dart';
import 'package:get/get.dart';

class NewReservation extends StatelessWidget {
  const NewReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestaurantController restaurantController = Get.put(RestaurantController());//-?? event listener
    List<RestaurantModel> restaurantList = restaurantController.restaurantList;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 350,
                width: 350,
                child: Obx(
                  () => restaurantController.isLoading.value
                      ? CircularProgressIndicator()
                      : ListView.builder(
                          itemCount: restaurantList.length,
                          itemBuilder: (context, index) {
                            return Text(restaurantList[index]
                                .restaurantName
                                .toString());
                          },
                        ),
                ),
              ),
              TextButton(
                  child: Text("NEW RESERVATION SCREEN"),
                  onPressed: () {
                    Get.bottomSheet(
                      BottomSheet(
                        onClosing: () {},
                        builder: (context) {
                          return Container(
                            height: Get.height / 7,
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Icon(Icons.wb_sunny_outlined),
                                  title: Text("Light Theme"),
                                  onTap: () =>
                                      Get.changeTheme(ThemeData.light()),
                                ),
                                ListTile(
                                  leading: Icon(Icons.wb_sunny),
                                  title: Text("Dark Theme"),
                                  onTap: () =>
                                      Get.changeTheme(ThemeData.dark()),
                                )
                              ],
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
