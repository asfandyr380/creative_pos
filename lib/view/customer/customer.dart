import 'package:creative_pos/view/customer/componants/addCustomer.dart';
import 'package:creative_pos/view/customer/componants/customer_table.dart';
import 'package:creative_pos/view/customer/controller/customer_controller.dart';
import 'package:creative_pos/widgets/custom_button.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/pagination_buttons.dart';

class Customer extends StatelessWidget {
  CustomerController controller = Get.put(CustomerController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 190,
              child: CustomButton(
                  text: "Add Customer",
                  onTap: () {
                    Get.dialog(
                      AddCustomer(
                        nameController: controller.nameController,
                        shopController: controller.shopController,
                        phoneController: controller.phoneController,
                        onadd: () => controller.addCustomer(),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 28),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 200,
                child: CustomField(
                  controller: controller.searchController,
                  onSubmit: (value) {
                    debugPrint(value);
                    controller.searchString.value = value;
                  },
                  constraints: const BoxConstraints(maxHeight: 30),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                ),
              ),
            ),
            const SizedBox(height: 18),
            Obx(
              () => CustomerTable(
                columns: controller.columns,
                searchString: controller.searchString.value,
              ),
            ),
            const SizedBox(height: 18),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  PaginationButtons(
                    next: () {},
                    back: () {},
                    currentPage: controller.currentPage.value,
                    totalPages: controller.totalPages.value,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
