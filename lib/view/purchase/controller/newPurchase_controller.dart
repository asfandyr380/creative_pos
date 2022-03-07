import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewPurchaseController extends GetxController {
  late final TextEditingController companyController;
  late final TextEditingController productController;
  late final TextEditingController buyPriceController;
  late final TextEditingController salePriceController;
  late final TextEditingController qtyController;
  late final TextEditingController cottonController;
  late final TextEditingController discController;
  late final TextEditingController varientController;

  List<String> columns = [
    "Item",
    "Price",
    "Cotton",
    "Qty.",
    "Disc.",
    "Subtotal",
    ""
  ];

  @override
  void onInit() {
    companyController = TextEditingController();
    productController = TextEditingController();
    buyPriceController = TextEditingController();
    salePriceController = TextEditingController();
    qtyController = TextEditingController();
    cottonController = TextEditingController();
    discController = TextEditingController();
    varientController = TextEditingController();
    super.onInit();
  }
}
