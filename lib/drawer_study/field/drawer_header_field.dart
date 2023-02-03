import 'package:flutter/material.dart';

class DrawerHeadField extends DrawerHeader {
  DrawerHeadField(BuildContext context,
      {Key? key, String name = "Default Name"})
      : super(
          key: key,
          child: Row(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.width /
                    10, //circle avatar size, use mediaquery for responsive design
                //context = device screen properties
                //context.size = catch device size
              ),
              Expanded(
                //child widget'a, etrafındaki widgetları itebildiğin kadar it ve kalan bölgeye genişleyerek yerleş
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    name,
                  ),
                ),
              ),
              IconButton(
                  padding: const EdgeInsets.all(8),
                  onPressed: test(), //Sor, voidcallback
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                  ))
            ],
          ),
        );
}

test() {
  debugPrint("statement");
}
