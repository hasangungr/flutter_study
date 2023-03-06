

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/hotel_pages/widget/drawer.dart';
import 'package:get/get.dart';

class SelectRoomView extends StatelessWidget {
  SelectRoomView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Kemer Barut Collection",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        drawer: MyDrawer(),
        body: ListView(children: [
          Container(
            height: Get.height / 4,
            color: Colors.grey.shade300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "KEMER BARUT COLLECTION",
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                Text(
                  "Contact",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 2,
                  indent: Get.width / 2.7,
                  endIndent: Get.width / 2.7,
                ),
                Text(
                  "Contact us with your comments, requests and suggestions",
                  style: TextStyle(color: Colors.grey.shade600, fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          contactInfoColumn(
              "Address", "Atatürk Bulvarı Yeni Mahalle No: 24 Kemer/Antalya"),
          contactInfoColumn("E-Mail", "reservation@baruthotels.com"),
          contactInfoColumn("Telephone", "+90 242 814 31 00"),
          contactInfoColumn("Booking Line", "+90 444 96 00"),
          Container(
            margin: EdgeInsets.all(24),
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  "LOCATION",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "ANTALYA, TÜRKİYE",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height / 2,
            color: Colors.grey.shade300,
            child: Column(
              
              children: [
                Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.black),
                ),
                Text(
                  "WE CARE ABOUT YOUR OPINIONS",
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                ),
                Divider(
                  color: Colors.grey.shade400,
                  thickness: 3,
                  indent: Get.width / 2.2,
                  endIndent: Get.width / 2.2,
                  height: 35,
                ),
                formColumn("Name", 1),
                formColumn("Surname", 1),
                formColumn("E-Mail", 1),
                formColumn("Messages", 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(value: false, onChanged: (value){},),
                    Expanded(child: Text("I accept to communşcate from all communication channels that I in accordance to the law."))
                  ],
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
          ),
        ]),
      ),
    );
  }

  Widget contactInfoColumn(String title, String text) {
    return  Container(
        margin: EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title: ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(
              text,
              style: TextStyle(fontSize: 18),
            )
          ],
        ),
      
    );
  }

  Widget formColumn(String hintText,int line) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          height: Get.height / 22,
          width: Get.width / 1.2,
          child: TextFormField(
            minLines:line ,
            maxLines: line,
            decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(left: 8, bottom: 9)),
          ),
        ),
      ],
    );
  }
}
