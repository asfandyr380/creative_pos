import 'package:creative_pos/view/purchase/componants/addItem.dart';
import 'package:creative_pos/view/purchase/componants/purchase_summery.dart';
import 'package:creative_pos/view/purchase/controller/newPurchase_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/app_color.dart';
import '../sales/componants/header.dart';
import 'componants/purchase_itemtable.dart';

class NewPurchase extends StatelessWidget {
  NewPurchaseController controller = Get.put(NewPurchaseController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: BoxDecoration(color: AppColors.whiteblue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "New Purchase",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Header(
                    fieldHint: "Select company",
                    controller: controller.companyController,
                    onTap: () {
                      Get.dialog(
                        AddItemPurchase(
                          productController: controller.productController,
                          buyPriceController: controller.buyPriceController,
                          salePriceController: controller.salePriceController,
                          qtyController: controller.qtyController,
                          cottonController: controller.cottonController,
                          discController: controller.discController,
                          varientController: controller.varientController,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  PurchaseItemTable(columns: controller.columns),
                ],
              ),
              PurchaseSummery(
                subtotalAmount: "1200",
                discountAmount: "320",
                totalAmount: "920",
                paidAmount: "1200",
                dueAmount: "0",
                onSave: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
