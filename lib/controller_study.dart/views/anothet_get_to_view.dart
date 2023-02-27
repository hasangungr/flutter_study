import 'package:flutter/material.dart';

import 'package:flutter_study/controller_study.dart/counter.dart';
import 'package:flutter_study/controller_study.dart/routes/routes.dart';
import 'package:flutter_study/controller_study.dart/views/another.dart';
import 'package:get/get.dart';

class GetToView extends StatelessWidget {
  const GetToView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => WillPopScope(onWillPop: () async{
    return false;
  }, child: 
    Scaffold(
      appBar: AppBar(
      
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text("Back"),
            ),
             ElevatedButton(
              onPressed: () {
                Get.to(CounterView());
              },
              child: const Text("To"),
            ),
             ElevatedButton(
              onPressed: () {
                Get.toNamed(Routes.getHomeRoute());
              },
              child: const Text("Named"),
            ),
             ElevatedButton(
              onPressed: () {
                Get.to(const Another());
              },
              child: const Text("Another"),
            ),
            
          ],
        ),
      ),
    ),);
  }

