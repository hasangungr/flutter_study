import 'package:flutter_study/alacarte_reservation/model/static/table.dart';

class Restaurant {
  String restaurantName;
  int restaurantCapacity;
  int restaurantTableCount;
  List<RestaurantTable>? tableList;
  Restaurant({
    required this.restaurantName,
    required this.restaurantCapacity,
    required this.restaurantTableCount,
    required this.tableList,
  });
}
