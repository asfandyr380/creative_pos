import 'package:creative_pos/view/stock/componants/stock_table.dart';
import 'package:creative_pos/view/stock/controller/stock_controller.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:creative_pos/widgets/pagination_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Stock extends StatelessWidget {
  StockController controller = Get.put(StockController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Available Stock",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
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
                  },
                  constraints: const BoxConstraints(maxHeight: 30),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                ),
              ),
            ),
            const SizedBox(height: 18),
            StockTable(
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
