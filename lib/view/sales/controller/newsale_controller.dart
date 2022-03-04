import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NewSaleController extends GetxController {
  TextEditingController customerController = TextEditingController();
  List<String> columns = [
    "Item",
    "Price",
    "Qty.",
    "Disc.",
    "Subtotal",
    ""
  ];
}
