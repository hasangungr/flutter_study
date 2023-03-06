import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HotelDetailView extends StatelessWidget {
  HotelDetailView({Key? key}) : super(key: key);
  final List<String> imgList = [
    "assets/images/hotel_room_1.jpg",
    "assets/images/hotel_room_2.jpg",
    "assets/images/hotel_room_3.jpg",
  ];

  List<Widget> roomProp = [
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.wifi,
          size: 48,
          color: Colors.blue,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.bed_rounded,
          size: 48,
          color: Colors.grey,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.breakfast_dining,
          size: 48,
          color: Colors.green,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.wine_bar_outlined,
          size: 48,
          color: Colors.red,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(Icons.beach_access, size: 48, color: Colors.yellow)),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.local_parking_rounded,
          size: 48,
          color: Colors.black,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.shopping_bag_outlined,
          size: 48,
          color: Colors.purple,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.local_hospital,
          size: 48,
          color: Colors.pink,
        )),
    Container(
        decoration: BoxDecoration(
            border: Border.all(width: 1.5),
            borderRadius: BorderRadius.circular(8)),
        margin: EdgeInsets.all(8),
        child: Icon(
          Icons.security,
          size: 48,
          color: Colors.orange,
        )),
  ];

  String roomText =
      "Geniş ve ferah bir oda, yüksek tavanlar, bol miktarda doğal ışık ve özel bir balkon sunuyor. Rahat bir kral yatak, iki kişilik rahat bir kanepe ve akıllı bir TV ile donatılmış bir oturma alanı bulunuyor. Geniş bir çalışma masası, hızlı internet bağlantısı ve telefon ile birlikte geliyor, iş seyahatleri için ideal bir seçenek.";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            height: Get.height / 3.5,
            width: Get.width,
            child: CarouselSlider(
              items: imgList.map((item) {
                return Container(
                  child: Image.asset(item, fit: BoxFit.fill),
                );
              }).toList(),
              options: CarouselOptions(
                aspectRatio: 16 / 9, //varsayılan 16//9'dur
                initialPage: 0, //default 0'dır başlangıç slide'ı
                enableInfiniteScroll: true, //sonsuz kaydırma , default true
                enlargeCenterPage: true,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(18),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Room Text",
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 42,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      border:
                          Border.symmetric(horizontal: BorderSide(width: 2))),
                  height: Get.height / 10,
                  width: Get.width,
                  child: ListView(
                      scrollDirection: Axis.horizontal, children: roomProp),
                ),
                Text(
                  roomText,
                  style: TextStyle(fontSize: 18, fontFamily: "Roboto"),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 4),
                  height: Get.height / 12,
                  // color: Colors.red,
                  width: Get.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "4.5",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          "6.2",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          "9.8",
                          style: TextStyle(fontSize: 40),
                        ),
                        Text(
                          "7.6",
                          style: TextStyle(fontSize: 40),
                        )
                      ]),
                ),
                Container(
                  margin: EdgeInsets.all(18),
                  child: Text(
                    textAlign: TextAlign.center,
                    roomText,
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: Get.height / 16,
            margin: EdgeInsets.only(
              bottom: 8,
              right: 4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border,
                      size: 40,
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Booking"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(Get.width, Get.height / 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
