import 'package:flutter_study/alacarte_reservation/views/new_reservation.dart';
import 'package:flutter_study/alacarte_reservation/views/restaurant_view.dart';
import 'package:flutter_study/alacarte_reservation/views/table_infos.dart';
import 'package:get/get.dart';

class Routes {
  static String home = "/";
  static String newReservation = "/newReservation";
  static String tableInfos = "/tableInfos";

  static String getHomeRoute() => home;
  static String getnewReservation() => newReservation;
  static String getTableInfos() => tableInfos;

  static List<GetPage> routes = [
    GetPage(page: () => const RestaurantView(), name: home),
    GetPage(page: () => const NewReservation(), name: newReservation),
    GetPage(page: () => const TableInfosView(), name: tableInfos),
  ];
}
