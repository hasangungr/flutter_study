class RestaurantTable {
  int tableNumber;
  int chairCount = 2;
  bool? reservationStatus = false;
  int? reservationPax;
  String? reservationName;
  String? reservationRoomNumber;
  String? reservationReason;
  String? reservationDate;

  RestaurantTable(
      {required this.tableNumber,
      required this.chairCount,
      required this.reservationStatus,
      this.reservationPax,
      this.reservationName,
      this.reservationRoomNumber,
      this.reservationReason,
      this.reservationDate});
}
