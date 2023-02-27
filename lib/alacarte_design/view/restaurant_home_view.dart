import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_design/controller/drag_and_drop._controller.dart';
import 'package:flutter_study/alacarte_design/controller/restaurant_view_controller.dart';
import 'package:flutter_study/alacarte_design/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_design/field/appbar_field.dart';
import 'package:flutter_study/alacarte_design/view/fourth_tab.dart';
import 'package:flutter_study/alacarte_design/view/second_tab.dart';
import 'package:flutter_study/alacarte_design/view/third_tab.dart';
import 'package:flutter_study/restaurant_design/view/tabs_screen.dart';
import 'package:get/get.dart';

class RestaurantHomeView extends StatelessWidget {
  RestaurantHomeView({Key? key}) : super(key: key);
  DateTimePickerController dateTimePickerController =
      Get.put(DateTimePickerController());
  DragDropController dragDropController = Get.put(DragDropController());
  RestaurantViewController restaurantViewController =
      Get.put(RestaurantViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarField(),
      body: InteractiveViewer(
        child: Expanded(
          child: Container(
            height: Get.height,
            width: Get.width,
            color: Colors.black12,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/plan.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Obx(
                  () => Positioned(
                    left: dragDropController.xPosition.value,
                    top: dragDropController.yPosition.value,
                    child: GestureDetector(
                      onTap: () {
                        sheetBottom();
                        // bookingBottomSheet();
                      },
                      child: Draggable(
                        feedback: SizedBox(
                            height: Get.height / 8,
                            width: Get.width / 8,
                            child: Image.asset(
                              "assets/images/2.png",
                            )),
                        childWhenDragging: Container(),
                        onDraggableCanceled: (velocity, offset) {
                          // sürükleme işlemi tamamlandığında nesnenin konumu
                        },
                        onDragUpdate: (details) {
                          dragDropController.positionUpdate(details);

                          Get.forceAppUpdate(); // değişiklikleri uygula
                        },
                        child: SizedBox(
                          height: Get.height / 8,
                          width: Get.width / 8,
                          child: Image.asset(
                            "assets/images/2.png",
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
              colors: [
                restaurantViewController.tabIndex.value == 1
                    ? Colors.white
                    : Colors.black,
                restaurantViewController.tabIndex.value == 0
                    ? Colors.white
                    : Colors.black,
              ],
            ),
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.white,
            onTap: restaurantViewController.changeTabIndex,
            currentIndex: restaurantViewController.tabIndex.value,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                   size: restaurantViewController.tabIndex.value == 0 ?28 :18,
                  color: restaurantViewController.tabIndex.value == 0
                      ? Colors.white
                      : Colors.black,
                ),
                label: "Indoor",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.sunny,size: restaurantViewController.tabIndex.value == 1 ?28 :18,
                    color: restaurantViewController.tabIndex.value == 1
                        ? Colors.white
                        : Colors.black),
                label: "Outdoor",
              ),
            ],
          ),
        ),
      ),
    );
  }

  bookingBottomSheet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            "Rezervasyon Bilgileri",
            style: TextStyle(
                fontFamily: "Average",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 0, 139)),
          ),
        ),
        inputContainer(),
        Row(children: [
          formContainer(),
          Expanded(child: formRoom()),
        ]),
      ],
    );
  }

  Container formContainer() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      height: 35,
      width: 85,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          const Text(
            "Pax: ",
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: DropdownButton<String>(
              value: "1",
              items: const [
                DropdownMenuItem(
                  value: "1",
                  child: Text("1"),
                ),
                DropdownMenuItem(
                  value: "2",
                  child: Text("2"),
                ),
                DropdownMenuItem(
                  value: "3",
                  child: Text("3"),
                ),
                DropdownMenuItem(
                  value: "4",
                  child: Text("4"),
                ),
                DropdownMenuItem(
                  value: "5",
                  child: Text("5"),
                ),
                DropdownMenuItem(
                  value: "6",
                  child: Text("6"),
                ),
              ],
              onChanged: (value) {},
            ),
          )
        ],
      ),
    );
  }

  Container inputContainer() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          const Text(
            "Guest Name: ",
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: TextField(
              onChanged: (text) {},
            ),
          ),
        ],
      ),
    );
  }

  Container formRoom() {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(4),
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1.5,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          const Text(
            "Room Name: ",
            style: TextStyle(fontSize: 18),
          ),
          Expanded(
            child: TextField(
              onChanged: (text) {},
            ),
          ),
        ],
      ),
    );
  }

  void sheetBottom() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.only(bottom: 7),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(12),
          ),
        ),
        height: Get.height / 2.5,
        child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              //appBar:
              Expanded(
                child: TabBar(
                  tabs: [
                    const Tab(
                      icon: Icon(Icons.book, color: Colors.black),
                    ),
                    const Tab(
                      icon: Icon(Icons.extension_outlined, color: Colors.black),
                    ),
                    const Tab(
                      icon: Icon(Icons.table_bar_outlined, color: Colors.black),
                    ),
                    const Tab(
                      icon: Icon(Icons.info, color: Colors.black),
                    ),
                  ],
                  indicator: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12),
                    ),
                  ),
                ),
              ),
              // body:
              Expanded(
                flex: 6,
                child: TabBarView(
                  children: [
                    bookingBottomSheet(),
                    const SecondTab(),
                    const ThirdTab(),
                    FourthView()
                  ],
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(Icons.send),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget secondView() {
    return ListView(
      children: [
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        ),
        inputContainer(),
        Row(
          children: [
            formContainer(),
            Expanded(
              child: formRoom(),
            ),
          ],
        )
      ],
    );
  }
}
