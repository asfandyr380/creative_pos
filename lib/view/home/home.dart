import 'package:creative_pos/models/nav_item_model.dart';
import 'package:creative_pos/view/customer/customer.dart';
import 'package:creative_pos/view/dashboard/dashboard.dart';
import 'package:creative_pos/view/home/componants/side_navbar.dart';
import 'package:creative_pos/view/home/controller/home_controller.dart';
import 'package:creative_pos/view/purchase/newPurchase.dart';
import 'package:creative_pos/view/purchase/purchase.dart';
import 'package:creative_pos/view/sales/new_sale.dart';
import 'package:creative_pos/view/sales/sales.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex: 2,
            child: Obx(
              () => SideNavBar(
                items: [
                  NavitemModel("Dashboard", FontAwesomeIcons.thLarge),
                  NavitemModel("Sales", FontAwesomeIcons.cashRegister),
                  NavitemModel("Purchase", FontAwesomeIcons.moneyBillWave),
                  NavitemModel("Stock", FontAwesomeIcons.store),
                  NavitemModel("Customers", FontAwesomeIcons.users),
                  NavitemModel("Reports", FontAwesomeIcons.infoCircle),
                  NavitemModel("Settings", FontAwesomeIcons.cogs),
                ],
                onSelect: (i) {
                  controller.currentIndex.value = i;
                },
                currentIndex: controller.currentIndex.value
              ),
            ),
          ),
          Flexible(
            flex: 8,
            child: Obx(
              () => IndexedStack(
                index: controller.currentIndex.value,
                children: [
                  const Dashboard(),
                  Sales((){
                    controller.currentIndex.value = 7;
                  }),
                  Purchase((){
                    controller.currentIndex.value = 8;
                  }),
                  Text("stock"),
                  Customer(),
                  Text("reports"),
                  Text("setting"),
                  NewSale(),
                  NewPurchase(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
