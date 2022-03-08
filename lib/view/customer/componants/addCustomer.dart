import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/util/input_validator.dart';
import 'package:creative_pos/widgets/custom_button.dart';
import 'package:creative_pos/widgets/custom_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class AddCustomer extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController shopController;
  final TextEditingController phoneController;
  final Function onadd;
  const AddCustomer({
    Key? key,
    required this.nameController,
    required this.shopController,
    required this.phoneController,
    required this.onadd,
  }) : super(key: key);

  @override
  State<AddCustomer> createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode mode = AutovalidateMode.disabled;

  validateInput() {
    var formState = formKey.currentState;
    if (formState!.validate()) {
      return true;
    } else {
      setState(() {
        mode = AutovalidateMode.onUserInteraction;
      });
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          height: 340,
          width: 400,
          decoration: BoxDecoration(
            color: AppColors.whiteblue,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: Form(
            key: formKey,
            autovalidateMode: mode,
            child: Column(
              children: [
                CustomField(
                  validator: (p0) => Validator.emptyValidation(p0),
                  controller: widget.nameController,
                  hintText: "Customer name",
                  prefixIcon: FontAwesomeIcons.user,
                ),
                const SizedBox(height: 15),
                CustomField(
                  validator: (p0) => Validator.emptyValidation(p0),
                  controller: widget.shopController,
                  hintText: "Shop name",
                  prefixIcon: FontAwesomeIcons.shopify,
                ),
                const SizedBox(height: 15),
                CustomField(
                  validator: (p0) => Validator.emptyValidation(p0),
                  controller: widget.phoneController,
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
                        onTap: () {
                          if (validateInput()) {
                            widget.onadd();
                            Get.back();
                          }
                        },
                      ),
                    ),
                    const SizedBox(width: 20),
                    SizedBox(
                      width: 120,
                      child: CustomButton(
                        text: "Cancel",
                        onTap: () {
                          Get.back();
                        },
                        btnColor: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
