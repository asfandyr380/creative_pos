import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PurchaseSummery extends StatelessWidget {
  final String subtotalAmount;
  final String discountAmount;
  final String totalAmount;
  final String paidAmount;
  final String dueAmount;
  final Function onSave;
  final bool isLoading;
  PurchaseSummery({
    Key? key,
    required this.discountAmount,
    required this.subtotalAmount,
    required this.totalAmount,
    required this.paidAmount,
    required this.dueAmount,
    required this.onSave,
    this.isLoading = false,
  }) : super(key: key);

  Divider divider = const Divider(
    color: Color(0xff979797),
    thickness: 0.8,
  );

  Container verticalDivider = Container(
    width: 1,
    height: 120,
    color: const Color(0xff979797).withOpacity(0.6),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 6,
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          valuesRow(title: "Subtotal", amount: subtotalAmount),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: divider,
          ),
          const SizedBox(height: 20),
          valuesRow(title: "Discount", amount: discountAmount),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: divider,
          ),
          const SizedBox(height: 20),
          valuesRow(
              title: "Total", amount: totalAmount, amountColor: AppColors.red),
          const SizedBox(height: 10),
          divider,
          const SizedBox(height: 20),
          divider,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 5,
                child: SizedBox(
                  width: 300,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "PAID",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.end,
                        children: [
                          const Text(
                            "Rs",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            paidAmount,
                            style: const TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Icon(FontAwesomeIcons.plusSquare,
                                  color: AppColors.blue),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              verticalDivider,
              Flexible(
                flex: 5,
                child: SizedBox(
                  width: 300,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "DUE",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.end,
                        children: [
                          Text(
                            "Rs",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.red,
                            ),
                          ),
                          Text(
                            dueAmount,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: AppColors.red,
                            ),
                          ),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          FontAwesomeIcons.plusSquare,
                          color: Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          divider,
          const SizedBox(height: 20),
          SizedBox(
            width: 200,
            height: 50,
            child: CustomButton(
              text: 'End Sale',
              onTap: () => onSave(),
              isLoading: isLoading,
            ),
          )
        ],
      ),
    );
  }

  Widget valuesRow({
    required String title,
    required String amount,
    final Color amountColor = Colors.black,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff646464),
              fontSize: 28,
            ),
          ),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              const Text(
                "Rs",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff646464),
                ),
              ),
              Text(
                amount,
                style: TextStyle(
                  color: amountColor,
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
