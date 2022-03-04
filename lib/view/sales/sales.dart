import 'package:creative_pos/view/sales/controller/sales_controller.dart';
import 'package:creative_pos/widgets/custom_button.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:creative_pos/widgets/custom_table.dart';
import 'package:creative_pos/widgets/pagination_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Sales extends StatelessWidget {
  final Function newSale;
  Sales(this.newSale);
  SalesController controller = Get.put(SalesController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomButton(
                text: "Create Sale", onTap: () => newSale()),
            const SizedBox(height: 28),
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                width: 200,
                child: CustomField(
                  controller: controller.searchController,
                  onSubmit: (value) {
                    debugPrint(value);
                  },
                  constraints: const BoxConstraints(maxHeight: 30),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                ),
              ),
            ),
            const SizedBox(height: 18),
            CustomTable(
              columns: controller.columns,
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
