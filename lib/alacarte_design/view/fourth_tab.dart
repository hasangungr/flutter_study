import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class FourthView extends StatelessWidget {
  const FourthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pizza =
        "Pizza, domates, peynir ve genellikle çeşitli malzemelerle yenen bir yemektir. Geleneksel olarak taş fırında yüksek sıcaklıkta pişirilir. Küçük bir pizzaya bazen pizzetta denir. ";

    return ListView(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: Get.height / 10,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 65,
                  width: 65,
                  child: Image.asset("assets/images/steak.png"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(pizza),
              ),
            ],
          ),
        ), Container(
          margin: EdgeInsets.all(8),
          height: Get.height / 10,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 65,
                  width: 65,
                  child: Image.asset("assets/images/steak.png"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(pizza),
              ),
            ],
          ),
        ),
         Container(
          margin: EdgeInsets.all(8),
          height: Get.height / 10,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 65,
                  width: 65,
                  child: Image.asset("assets/images/steak.png"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(pizza),
              ),
            ],
          ),
        )
      ],
    );
  }
}
