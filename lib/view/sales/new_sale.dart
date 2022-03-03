import 'package:creative_pos/view/sales/controller/newsale_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../res/app_color.dart';
import 'package:velocity_x/velocity_x.dart';

class NewSale extends StatelessWidget {
  NewSaleController controller = Get.put(NewSaleController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          margin: EdgeInsets.only(left: context.percentWidth * 20),
          decoration: BoxDecoration(color: AppColors.whiteblue),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Wrap(
                spacing: 10,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: const Icon(FontAwesomeIcons.arrowLeft),
                    ),
                  ),
                  const Text(
                    "New Sale",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(),
                      Container(),
                    ],
                  ),
                  Container(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
