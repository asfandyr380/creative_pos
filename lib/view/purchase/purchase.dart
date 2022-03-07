import 'package:creative_pos/view/purchase/componants/purchase_table.dart';
import 'package:creative_pos/view/purchase/controller/purchase_controller.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/custom_button.dart';
import '../../widgets/pagination_buttons.dart';

class Purchase extends StatelessWidget {
  final Function newPurchase;
  Purchase(this.newPurchase);

  PurchaseController controller = Get.put(PurchaseController());

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
              width: 170,
              child: CustomButton(text: "Purchase", onTap: () => newPurchase()),
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
            PurchaseTable(
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
