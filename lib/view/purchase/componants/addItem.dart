import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/widgets/custom_button.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:creative_pos/widgets/custom_searchabletextfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddItemPurchase extends StatelessWidget {
  final TextEditingController productController;
  final TextEditingController buyPriceController;
  final TextEditingController salePriceController;
  final TextEditingController cottonController;
  final TextEditingController qtyController;
  final TextEditingController discController;
  final TextEditingController varientController;
  const AddItemPurchase({
    Key? key,
    required this.productController,
    required this.buyPriceController,
    required this.salePriceController,
    required this.cottonController,
    required this.qtyController,
    required this.discController,
    required this.varientController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: 500,
          width: 600,
          decoration: BoxDecoration(
            color: AppColors.whiteblue,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              CustomSearchableField(
                controller: productController,
                hintText: "Select product",
                prefixIcon: FontAwesomeIcons.store,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 5,
                    child: CustomField(
                      controller: buyPriceController,
                      hintText: "Buy price",
                      prefixIcon: FontAwesomeIcons.dollarSign,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 5,
                    child: CustomField(
                      controller: salePriceController,
                      hintText: "Sale price",
                      prefixIcon: FontAwesomeIcons.dollarSign,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 5,
                    child: CustomField(
                      controller: cottonController,
                      hintText: "Cotton",
                      prefixIcon: FontAwesomeIcons.boxOpen,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 5,
                    child: CustomField(
                      controller: qtyController,
                      hintText: "Qty. (per cotton)",
                      prefixIcon: FontAwesomeIcons.cartPlus,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 5,
                    child: CustomField(
                      controller: discController,
                      hintText: "Discount",
                      prefixIcon: FontAwesomeIcons.coins,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 5,
                    child: CustomField(
                      controller: varientController,
                      hintText: "Varient.",
                      prefixIcon: FontAwesomeIcons.superscript,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 270,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Total Qty.",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "12",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 270,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Discount",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "%120",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 270,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Subtotal",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "120",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 120,
                    child: CustomButton(
                      text: "Add",
                      onTap: () {},
                    ),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    width: 120,
                    child: CustomButton(
                      text: "Cancel",
                      onTap: () {},
                      btnColor: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
