import 'package:creative_pos/models/customer_model/customer_model.dart';
import 'package:creative_pos/services/db_helper.dart';
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

  RxString searchString = "".obs;

  addCustomer() {
    final customer = CustomerModel()
      ..name = nameController.text
      ..shopName = shopController.text
      ..phone = phoneController.text
      ..give = 0
      ..take = 0;

    final box = Boxes.getCustomerBox();
    box.add(customer);
    nameController.clear();
    shopController.clear();
    phoneController.clear();
  }
}
