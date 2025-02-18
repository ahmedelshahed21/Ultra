class OrderDataModel{
  final int orderReceivingOption;
  final int? branchId;
  final String? street;
  final String? city;
  final String? governorate;
  final int amountToPay;

  OrderDataModel({required this.orderReceivingOption, required this.branchId, required this.street, required this.city, required this.governorate,required this.amountToPay});
}