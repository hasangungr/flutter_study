import 'package:flutter/material.dart';

import 'package:flutter_study/restaurant_design/view/tab_view/special_table_view.dart';

import 'package:flutter_study/restaurant_design/view/tab_view/tab_two.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                text: "2",
              ),
              Tab(
                text: "4",
              ),
              Tab(
                icon: Icon(Icons.table_bar_outlined),
              ),
              Tab(
                icon: Icon(Icons.info),
              ),
            ],
          ),
          body: TabBarView(
            children: [
              TabTwoView(),
              Text("4 KİŞİLİK MASALAR"),
              SpecialTablesView(),
              Text("RESTAURANT HAKKINDA BİLGİLER"),
            ],
          ),
        ),
      ),
    );
  }
}
