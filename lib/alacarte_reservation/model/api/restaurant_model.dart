class RestaurantModel {
  int? restaurantCapacity;
  String? restaurantName;
  int? restaurantTableCount;
  List<TableList>? tableList;

  RestaurantModel(
      {this.restaurantCapacity,
      this.restaurantName,
      this.restaurantTableCount,
      this.tableList});

  RestaurantModel.fromJson(Map<String, dynamic> json) {
    restaurantCapacity = json['restaurantCapacity'];
    restaurantName = json['restaurantName'];
    restaurantTableCount = json['restaurantTableCount'];
    if (json['tableList'] != null) {
      tableList = <TableList>[];
      json['tableList'].forEach((v) {
        tableList!.add(TableList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['restaurantCapacity'] = restaurantCapacity;
    data['restaurantName'] = restaurantName;
    data['restaurantTableCount'] = restaurantTableCount;
    if (tableList != null) {
      data['tableList'] = tableList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class TableList {
  int? chairCount;
  bool? checkIn;
  String? reservationDate;
  String? reservationName;
  int? reservationPax;
  String? reservationReason;
  String? reservationRoomNumber;
  String? tableNumber;

  TableList(
      {this.chairCount,
      this.checkIn,
      this.reservationDate,
      this.reservationName,
      this.reservationPax,
      this.reservationReason,
      this.reservationRoomNumber,
      this.tableNumber});

  TableList.fromJson(Map<String, dynamic> json) {
    chairCount = json['chairCount'];
    checkIn = json['checkIn'];
    reservationDate = json['reservationDate'];
    reservationName = json['reservationName'];
    reservationPax = json['reservationPax'];
    reservationReason = json['reservationReason'];
    reservationRoomNumber = json['reservationRoomNumber'];
    tableNumber = json['tableNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['chairCount'] = chairCount;
    data['checkIn'] = checkIn;
    data['reservationDate'] = reservationDate;
    data['reservationName'] = reservationName;
    data['reservationPax'] = reservationPax;
    data['reservationReason'] = reservationReason;
    data['reservationRoomNumber'] = reservationRoomNumber;
    data['tableNumber'] = tableNumber;
    return data;
  }
}
