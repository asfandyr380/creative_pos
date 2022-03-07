import 'package:creative_pos/view/sales/componants/add_item.dart';
import 'package:creative_pos/view/sales/componants/header.dart';
import 'package:creative_pos/view/sales/componants/item_table.dart';
import 'package:creative_pos/view/sales/componants/summery_box.dart';
import 'package:creative_pos/view/sales/controller/newsale_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../res/app_color.dart';

class NewSale extends StatelessWidget {
  NewSaleController controller = Get.put(NewSaleController());

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
            "New Sale",
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
                    controller: controller.customerController,
                    onTap: () {
                      Get.dialog(
                        AddItem(
                          productController: controller.productController,
                          priceController: controller.priceController,
                          qtyController: controller.qtyController,
                          cottonController: controller.cottonController,
                          discController:  controller.discController,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  ItemTable(columns: controller.columns),
                ],
              ),
              SummeryBox(
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
