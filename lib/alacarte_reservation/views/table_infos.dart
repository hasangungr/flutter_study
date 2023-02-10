import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class TableInfosView extends StatelessWidget {
  const TableInfosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
            child: Text("TABLE INFOS SCREEN"),
            onPressed: () {
              Get.back();
              Get.showSnackbar(
                GetSnackBar(
                  title: "Test",
                  message: "showSnackBar",
                  duration: Duration(seconds: 1),
                  mainButton: ElevatedButton(
                      onPressed: () {
                    
                      },
                      child: Text("Dön Geri")),
                ),
              );
            }),
      ),
    );
  }
}
