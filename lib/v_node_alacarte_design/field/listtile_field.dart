import 'package:flutter/material.dart';

class RestaurantListtileField extends ListTile {
  RestaurantListtileField(
      {Key? key,
      required String titleText,
      required String restaurantCapacity,
      required Widget leadingWidget,
      required String restaurantDesc})
      : super(
          key: key,
          leading: leadingWidget,
          title: Text(
            titleText,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(restaurantDesc),
          trailing: Column(
            children: [
              Expanded(child: Icon(Icons.person, color: Colors.red,)),
              Expanded(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade500,
                  child: Text(restaurantCapacity,
                  
                      style: TextStyle(color: Colors.red, fontSize: 18),
                   ),
                ),
              ),
            ],
          ),
        );
}
