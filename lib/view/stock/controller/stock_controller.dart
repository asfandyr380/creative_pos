import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class StockController extends GetxController {
  TextEditingController searchController = TextEditingController();

  List<String> columns = ["Item", "Cotton", "Qty", "Total Qty.", "Buy Price", "Sale Price", "Action"];

  RxInt currentPage = 0.obs;
  RxInt totalPages = 0.obs;
}
