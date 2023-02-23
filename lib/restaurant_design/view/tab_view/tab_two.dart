import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_design/view/widget/table_container.dart';
import 'package:get/get.dart';

class TabTwoView extends StatelessWidget {
  const TabTwoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> tableList = List.generate(30, (index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {
            Get.snackbar("title", "message");
          },
          child: tableContainer(
              pax: index % 2 == 0 ? "2 " : null,
              reservDate: index % 2 == 0 ? "9:00" : null,
              roomNumber: index % 2 == 0 ? "A${index + 11}" : null,
              reservReason: index % 2 == 0 ? "birthday" : null,
              tableNumber: (100 + index).toString(),
              reservName: index % 2 == 0 ? "Reservation Name" : null),
        ),
      );
    });

    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: tableList,
        ),
      ),
    );
  }
}
