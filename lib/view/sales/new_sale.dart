import 'package:creative_pos/view/sales/componants/header.dart';
import 'package:creative_pos/view/sales/componants/item_table.dart';
import 'package:creative_pos/view/sales/controller/newsale_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../res/app_color.dart';
import '../../widgets/custom_table.dart';

class NewSale extends StatelessWidget {
  NewSaleController controller = Get.put(NewSaleController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
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
                        onTap: () {},
                      ),
                      const SizedBox(height: 15),
                      ItemTable(columns: controller.columns),
                      // Container(
                      //   width: 600,
                      //   height: 200,
                      //   decoration: BoxDecoration(
                      //     color: Colors.white,
                      //     borderRadius: BorderRadius.circular(8),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Colors.black.withOpacity(0.2),
                      //         blurRadius: 6,
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                  Container(
                    width: 400,
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 6),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
