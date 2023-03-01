import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/field/container_field.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/restaurant_info_bottom_sheet.dart';
import 'package:get/get.dart';

double deviceHeight = Get.height;
double deviceWidth = Get.width;



customContainer(String text1, String text2) {
  return Container(
    height: deviceHeight / 11,
    //     color: Colors.red,
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.all(8),
    child: Row(children: [
      Expanded(
          flex: 8,
          child: Text(
            text1,
            style: TextStyle(fontSize: 24),
          )),
      Text(
        text2,
        style: TextStyle(fontSize: 24),
      )
    ]),
  );
}

Widget reservationListTile() {
  return ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
    leading: Container(
      width: deviceWidth / 8,
      height: deviceHeight / 16,
      color: Colors.blueGrey,
      child: const Center(
          child: Text(
        '203',
        style: TextStyle(color: Colors.white),
      )),
    ),
    title: Row(
      children: [
        Text(
          "123",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: const Text(
            'Reservation Name',
            style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 18,
                fontWeight: FontWeight.normal),
          ),
        ),
      ],
    ),
    subtitle: const Text('Reservation Description'),
    trailing: Container(
      width: deviceWidth / 10,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(
                Icons.person,
                size: 20,
                color: Colors.black,
              ),
              Text(
                '3',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.child_care,
                size: 20,
                color: Colors.black,
              ),
              Text(
                '2',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget tabbarAppbar() {
  return AppBar(
    actions: [
      IconButton(
          onPressed: () {
            Get.bottomSheet(RestaurantInfoBottomSheet());
          },
          icon: Icon(Icons.info))
    ],
    backgroundColor: Colors.grey.shade300,
    automaticallyImplyLeading: false,
    bottom:
        TabBar(labelColor: Colors.black, indicatorColor: Colors.black, tabs: [
      Tab(
        child: Text(
          "Reservation",
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
      Tab(
        text: "In Out",
      ),
      Tab(
        child: Text(
          "Wait Cancel",
          style: TextStyle(
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    ]),
  );
}

Widget buttonsBottomSheet() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(24), right: Radius.circular(24))),
    height: deviceHeight / 1.5,
    child: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        ), Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white, // Düğmenin arka plan rengi
                onPrimary: Colors.blueAccent, // Düğme metnin rengi
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // Düğmenin şekli
                ),
                minimumSize: Size(
                    deviceWidth, deviceHeight / 14), // Düğmenin minimum boyutu
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
              child: Text(
                "Booking",
                style: TextStyle(fontSize: 28),
              )),
        )
      ],
    ),
  );
}
