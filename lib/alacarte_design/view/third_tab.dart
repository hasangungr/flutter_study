import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_design/controller/icon_active_controller.dart';
import 'package:get/get.dart';

class ThirdTab extends StatelessWidget {
  const ThirdTab({super.key});

  @override
  Widget build(BuildContext context) {
    ActiveIconController activeIconController = Get.put(ActiveIconController());
    return Obx(
      () => Center(
        child: Wrap(
          children: [
            GestureDetector(
              onTap: () {
                activeIconController.changeIsActive(0);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: activeIconController.isActive[0] == false
                      ? Colors.white
                      : Colors.black,
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                margin: const EdgeInsets.all(8),
                height: Get.height / 10,
                width: Get.width / 6,
                child: Icon(Icons.wine_bar,
                    color: activeIconController.isActive[0] == false
                        ? Colors.black
                        : Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                activeIconController.changeIsActive(1);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: activeIconController.isActive[1] == false
                      ? Colors.white
                      : Colors.black,
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                margin: const EdgeInsets.all(8),
                height: Get.height / 10,
                width: Get.width / 6,
                child: Icon(Icons.wine_bar,
                    color: activeIconController.isActive[1] == false
                        ? Colors.black
                        : Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                activeIconController.changeIsActive(2);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: activeIconController.isActive[2] == false
                      ? Colors.white
                      : Colors.black,
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                margin: const EdgeInsets.all(8),
                height: Get.height / 10,
                width: Get.width / 6,
                child: Icon(Icons.wine_bar,
                    color: activeIconController.isActive[2] == false
                        ? Colors.black
                        : Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                activeIconController.changeIsActive(3);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: activeIconController.isActive[3] == false
                      ? Colors.white
                      : Colors.black,
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                margin: const EdgeInsets.all(8),
                height: Get.height / 10,
                width: Get.width / 6,
                child: Icon(Icons.wine_bar,
                    color: activeIconController.isActive[3] == false
                        ? Colors.black
                        : Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                activeIconController.changeIsActive(4);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: activeIconController.isActive[4] == false
                      ? Colors.white
                      : Colors.black,
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                margin: const EdgeInsets.all(8),
                height: Get.height / 10,
                width: Get.width / 6,
                child: Icon(Icons.wine_bar,
                    color: activeIconController.isActive[4] == false
                        ? Colors.black
                        : Colors.white),
              ),
            ),
            GestureDetector(
              onTap: () {
                activeIconController.changeIsActive(5);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: activeIconController.isActive[5] == false
                      ? Colors.white
                      : Colors.black,
                  border: Border.all(
                    width: 1.5,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                margin: const EdgeInsets.all(8),
                height: Get.height / 10,
                width: Get.width / 6,
                child: Icon(Icons.wine_bar,
                    color: activeIconController.isActive[5] == false
                        ? Colors.black
                        : Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
