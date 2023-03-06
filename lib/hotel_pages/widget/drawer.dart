import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget MyDrawer() {
   List<DropdownMenuItem<String>> languagesDropDownList = [
    DropdownMenuItem(
      child: Text("TR",
          style: TextStyle(color: Colors.white, fontSize: Get.width / 22)),
      value: "TR",
    ),
    DropdownMenuItem(
      child: Text("EN",
          style: TextStyle(color: Colors.white, fontSize: Get.width / 22)),
      value: "EN",
    ),
    DropdownMenuItem(
      child: Text("DE",
          style: TextStyle(color: Colors.white, fontSize: Get.width / 22)),
      value: "DE",
    ),
  ];

  List<Widget> listviewList = [
    Text(
      "COLLECTION HAKKINDA",
      style: TextStyle(
        color: Colors.white,
        fontSize: Get.width / 22,
        height: 2,
          letterSpacing: 2
      ),
      textAlign: TextAlign.start,
    ),
    Text("ODALAR & SUITLER",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("ÖDÜLLER & SERTİFİKALAR",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("GASTRONOMİ",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("ÇOCUKLAR",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("SPOR & EĞLENCE",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("SPA & WELLBING",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("TOPLANTI",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("BİSİKLET DOSTU OTEL",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("BALAYI",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("SERVİSLER",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("KAMPANYALAR",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("GALERİ",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("KEMER BARUT HABERLERİ",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("KÜTÜPHANE",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
    Text("İLETİŞİM",
        style: TextStyle(
            color: Colors.white,
            fontSize: Get.width / 22,
            height: 2,
            letterSpacing: 2)),
  ];
    Widget signInRow(String text, IconData icon) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        Text(text,
            style: TextStyle(color: Colors.white, fontSize: Get.width / 23))
      ],
    );
  }
  
  return Drawer(

    backgroundColor: Colors.black,
    child: Column(
      children: [
        Container(
          height: Get.height / 8,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  )),
              Text(
                "KEMER BARUT COLLECTİON",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        Container(
          height: Get.height / 12,
          color: Colors.grey.shade800,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              signInRow(
                "Giriş Yap",
                Icons.person,
              ),
              DropdownButton<String>(
                  dropdownColor: Colors.white,
                  value: languagesDropDownList[0].value,
                  items: languagesDropDownList,
                  onChanged: (value) {})
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: listviewList,
          ),
        ),
        Container(
          height: Get.width / 10,
          child: signInRow("BARUT HOTELS", Icons.arrow_back_ios_new),
        )
      ],
    ),
  );
  
}
