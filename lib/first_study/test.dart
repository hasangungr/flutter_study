import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter_study/first_study/drawer.dart';
import 'package:flutter_study/first_study/scaffold.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading:
            false, //automatically build leading, defult true
        leading: IconButton(
          //leading is left button
          //auto leading is back button
          icon: const Icon(Icons.flag),
          onPressed: () {
            Get.off(const ScaffoldView());
          },
        ),
        elevation: 50, //shadow height
        shadowColor: Colors.red,

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text("data"),
            Text("data"),
            Text("data"),
            Text("data"),
          ]),
        ),
        actions: [
          // appbar right buttons, if add new widget, title move to left
          IconButton(
            icon: const Icon(Icons.playlist_play),
            tooltip: 'Buton tipi',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add),
            tooltip: 'Buton tipi',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.playlist_add_check),
            tooltip: 'Buton tipi',
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.abc),
            tooltip: 'Buton tipi',
            onPressed: () {
              Get.to(const DrawerView());
            },
          ),
        ],
        title: const Icon(Icons.flutter_dash),

        shape: const RoundedRectangleBorder(
          //ovalleştirdi
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(40),
              bottomLeft: Radius.circular(40)),
        ),
      ),
    );
  }
}
