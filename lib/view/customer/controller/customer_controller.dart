import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CustomerController extends GetxController {
  TextEditingController searchController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController shopController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  List<String> columns = ["Name", "Shop", "Phone", "Give", "Take", "Action"];

  RxInt currentPage = 0.obs;
  RxInt totalPages = 0.obs;
}
