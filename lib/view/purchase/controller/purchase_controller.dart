import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class PurchaseController extends GetxController {
  TextEditingController searchController = TextEditingController();
  List<String> columns = ["Code", "Items", "Grandtotal", "Actions"];

  RxInt currentPage = 0.obs;
  RxInt totalPages = 0.obs;
}
