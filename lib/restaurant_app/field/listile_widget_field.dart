import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantListTile extends ListTile {
  RestaurantListTile(
      {Key? key,
      required String titleText,
      required String restaurantCapacity,
      required String restaurantDesc})
      : super(
          key: key,
          trailing: Column(
            children: [
              Expanded(child: Icon(Icons.person)),
              Expanded(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.shade400,
                  child: Text(restaurantCapacity,
                      style: TextStyle(color: Colors.grey)),
                ),
              ),
            ],
          ),
          leading: Image.asset("assets/images/steak.png"),
          title: Text(
            titleText,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(restaurantDesc),
        );
}

class ReservationCardListTile extends Container {
  ReservationCardListTile(
      {Key? key,
      required String roomNumber,
      required String tableNumber,
      required String reservationDescription,
      required String reservationName,
      required String pax,
      required Color cardColor,
      required String? childPax})
      : super(
          key: key,
          height: Get.height / 12.5,
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(width: 1.5),
              color: Colors.white,
              borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: cardColor,
                ),
                width: Get.width / 8,
                height: Get.height / 12.5,
                child: Center(
                  child: Text(
                    tableNumber,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              Container(
                //  color: Colors.red,
                height: Get.height / 12.5,
                width: Get.width / 2.2,
                child: Column(
                  children: [
                    Text(
                      tableNumber + " " + reservationName,
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      reservationDescription,
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    )
                  ],
                ),
              ),
              Container(
                width: Get.width / 8,
                padding: EdgeInsets.all(0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14), color: cardColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          pax,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.child_care,
                          size: 20,
                          color: Colors.white,
                        ),
                        Text(
                          childPax ?? "0",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
}
