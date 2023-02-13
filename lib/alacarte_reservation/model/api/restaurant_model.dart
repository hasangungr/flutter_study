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
        tableList!.add(new TableList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['restaurantCapacity'] = this.restaurantCapacity;
    data['restaurantName'] = this.restaurantName;
    data['restaurantTableCount'] = this.restaurantTableCount;
    if (this.tableList != null) {
      data['tableList'] = this.tableList!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['chairCount'] = this.chairCount;
    data['checkIn'] = this.checkIn;
    data['reservationDate'] = this.reservationDate;
    data['reservationName'] = this.reservationName;
    data['reservationPax'] = this.reservationPax;
    data['reservationReason'] = this.reservationReason;
    data['reservationRoomNumber'] = this.reservationRoomNumber;
    data['tableNumber'] = this.tableNumber;
    return data;
  }
}
