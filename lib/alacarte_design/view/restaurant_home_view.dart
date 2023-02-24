import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_study/alacarte_design/controller/drag_and_drop._controller.dart';
import 'package:flutter_study/alacarte_design/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_design/field/appbar_field.dart';
import 'package:flutter_study/alacarte_design/widget/restaurant_name_drop_down.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RestaurantHomeView extends StatelessWidget {
  RestaurantHomeView({super.key});
  DateTimePickerController dateTimePickerController =
      Get.put(DateTimePickerController());
  DragDropController dragDropController = Get.put(DragDropController());

  @override
  Widget build(BuildContext context) {
    double _xPosition = 0;
    double _yPosition = 0;
    return Scaffold(
      appBar: AppBarField(),
      body: InteractiveViewer(
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: Get.height,
                width: Get.width,
                color: Colors.red,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/plan.png",
                      fit: BoxFit.fill,
                    ),
                    Obx(
                      () => Positioned(
                        left: dragDropController.xPosition.value,
                        top: dragDropController.yPosition.value,
                        child: Draggable(
                          child: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/images/2.png",
                              )),
                          feedback: Container(
                              height: 50,
                              width: 50,
                              child: Image.asset(
                                "assets/images/2.png",
                              )),
                          childWhenDragging: Container(),
                          onDraggableCanceled: (velocity, offset) {
                            // sürükleme işlemi tamamlandığında nesnenin konumu
                          },
                          onDragUpdate: (details) {
                            dragDropController.positionUpdate(details);
                            // sürükleme işlemi sırasında nesnenin konumunun güncellenmesi
                            //_offset = Offset(
                            // details.globalPosition.dx -
                            //     25, // nesnenin tam ortasında göstermek için -25 yaparak X koordinatı ayarlanır
                            // details.globalPosition.dy -
                            //     25, // nesnenin tam ortasında göstermek için -25 yaparak Y koordinatı ayarlanır
                            //);
                            Get.forceAppUpdate(); // değişiklikleri uygula
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Draggable(
              child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/images/2.png",
                  )),
              feedback: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset(
                    "assets/images/2.png",
                  )),
              childWhenDragging: Container(),
              onDraggableCanceled: (velocity, offset) {
                // sürükleme işlemi tamamlandığında nesnenin konumu
              },
              onDragUpdate: (details) {
                // sürükleme işlemi sırasında nesnenin konumunun güncellenmesi
                //_offset = Offset(
                //           details.globalPosition.dx -
                //               25, // nesnenin tam ortasında göstermek için -25 yaparak X koordinatı ayarlanır
                //           details.globalPosition.dy -
                //               25, // nesnenin tam ortasında göstermek için -25 yaparak Y koordinatı ayarlanır
                //  //       );
                //   Get.forceAppUpdate(); // değişiklikleri uygula
              },
            )
          ],
        ),
      ),
    );
  }
}
