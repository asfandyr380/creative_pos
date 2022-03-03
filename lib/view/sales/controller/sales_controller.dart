import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SalesController extends GetxController {
  List<String> columns = [
    "Customer",
    "Items",
    "Disc%",
    "Grandtotal",
    "Actions"
  ];
  TextEditingController searchController = TextEditingController();

  RxInt currentPage = 0.obs;
  RxInt totalPages = 0.obs;
}
