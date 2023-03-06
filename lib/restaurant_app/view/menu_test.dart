import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/check_in_out_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/reserv_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/wait_cancel_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/widgets.dart';

class MenuTest extends StatelessWidget {
  const MenuTest({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(deviceHeight / 10),
          child: tabbarAppbar(),
        ),
        body: TabBarView(children: [
          ReservationListWidget(),
          CheckInOutListWidget(),
          WaitCancelListWidget()
        ]),
      ),
    );
  }
}
