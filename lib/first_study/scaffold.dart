import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_study/first_study/test.dart';

class ScaffoldView extends StatelessWidget {
  const ScaffoldView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      floatingActionButton: FloatingActionButton(onPressed: () {
        Get.to(const Test());
      }),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text("AppBar"),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
