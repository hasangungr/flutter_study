import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_design/view/tabs_screen.dart';
import 'package:get/get.dart';

class OutdoorView extends StatelessWidget {
  const OutdoorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TabsScreen();
  }
}
