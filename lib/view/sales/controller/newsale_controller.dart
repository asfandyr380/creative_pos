import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewSaleController extends GetxController {
  late final TextEditingController customerController;
  late final TextEditingController productController;
  late final TextEditingController priceController;
  late final TextEditingController qtyController;
  late final TextEditingController cottonController;
  late final TextEditingController discController;

  List<String> columns = ["Item", "Price", "Qty.", "Disc.", "Subtotal", ""];

  @override
  void onInit() {
    customerController = TextEditingController();
    productController = TextEditingController();
    priceController = TextEditingController();
    qtyController = TextEditingController();
    cottonController = TextEditingController();
    discController = TextEditingController();
    super.onInit();
  }
}
