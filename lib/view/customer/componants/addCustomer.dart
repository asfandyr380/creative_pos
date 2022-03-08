import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/widgets/custom_button.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCustomer extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController shopController;
  final TextEditingController phoneController;
  const AddCustomer({
    Key? key,
    required this.nameController,
    required this.shopController,
    required this.phoneController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            color: AppColors.whiteblue,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Column(
            children: [
              CustomField(
                controller: nameController,
                hintText: "Customer name",
                prefixIcon: FontAwesomeIcons.user,
              ),
              const SizedBox(height: 15),
              CustomField(
                controller: shopController,
                hintText: "Shop name",
                prefixIcon: FontAwesomeIcons.shopify,
              ),
              const SizedBox(height: 15),
              CustomField(
                controller: phoneController,
                hintText: "Phone number",
                prefixIcon: FontAwesomeIcons.phone,
              ),
              const Spacer(),
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
