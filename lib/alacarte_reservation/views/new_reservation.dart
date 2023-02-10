import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class NewReservation extends StatelessWidget {
  const NewReservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
