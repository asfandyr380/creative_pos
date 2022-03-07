import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/view/dashboard/componants/dashboard_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Dashboard",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 28),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardCard(
                  count: NumberFormat.compact().format(123123),
                  title: "Total Sales",
                  icon: FontAwesomeIcons.cashRegister,
                  iconBoxColor: AppColors.lightred,
                ),
                DashboardCard(
                  count: NumberFormat.compact().format(123123),
                  title: "Total Purchase",
                  icon: FontAwesomeIcons.moneyBillWave,
                  iconBoxColor: AppColors.lightgreen,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardCard(
                  count:
                      NumberFormat.compactCurrency(symbol: "", decimalDigits: 2)
                          .format(721),
                  title: "Sales Amount",
                  icon: FontAwesomeIcons.moneyBill,
                  iconBoxColor: AppColors.lightpurple,
                  isCurrency: true,
                ),
                DashboardCard(
                  count:
                      NumberFormat.compactCurrency(symbol: "", decimalDigits: 2)
                          .format(3212),
                  title: "Purchase Amount",
                  icon: FontAwesomeIcons.moneyBill,
                  iconBoxColor: AppColors.lightblue,
                  isCurrency: true,
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DashboardCard(
                  count: NumberFormat.compact().format(123123),
                  title: "Total Stock",
                  icon: FontAwesomeIcons.store,
                  iconBoxColor: AppColors.darkgreen,
                ),
                DashboardCard(
                  count: NumberFormat.compact().format(123123),
                  title: "Total Customers",
                  icon: FontAwesomeIcons.users,
                  iconBoxColor: AppColors.lightred,
                ),
              ],
            ),
            const SizedBox(height: 24),
            DashboardCard(
              count: NumberFormat.compact().format(123123),
              title: "Total Profit",
              icon: FontAwesomeIcons.moneyBill,
              iconBoxColor: AppColors.blue,
              isCurrency: true,
            ),
          ],
        ),
      ),
    );
  }
}
