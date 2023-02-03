import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_study/first_study/scaffold.dart';
import 'package:flutter_study/first_study/test.dart';


class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  State<DrawerView> createState() => _DrawerViewState();
}
  String example = "test";
class _DrawerViewState extends State<DrawerView> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openDrawer();
              },
              icon: const Icon(Icons.abc))),
      drawer: Drawer(
        semanticLabel: "Test",
        backgroundColor: Colors.red,
        child: Column(
          children: [
            const Expanded(
              flex: -2,
              child:  DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text("DATA"),
              ),
            ),
            Expanded(child: drawerList())
          ],
        ),
      ),
    );
  }

  Widget drawerWidget(IconData icon, String? data2, Widget? view,
          {required String data}) =>
      ListTile(
          leading: Icon(icon),
          title: Text(data),
          onTap: () {
            Get.to(view);
          });
  Widget drawerList() => ListView(
        children: [
          drawerWidget(Icons.restaurant, "Scaffold", const ScaffoldView(), data: ""),
          drawerWidget(Icons.home, example, const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
          drawerWidget(Icons.home, "Test", const Test(), data: ""),
        ],
      );
}
