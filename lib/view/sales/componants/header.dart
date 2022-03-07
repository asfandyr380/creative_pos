import 'package:creative_pos/res/app_color.dart';
import 'package:flutter/material.dart';

import '../../../widgets/custom_searchabletextfield.dart';

class Header extends StatelessWidget {
  final TextEditingController controller;
  final Function onTap;
  final String fieldHint;
  const Header({
    Key? key,
    required this.controller,
    required this.onTap,
    this.fieldHint = "select Customer",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 6),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 10,
            children: [
              InkWell(
                onTap: () => onTap(),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: AppColors.lightblue,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              const Text(
                "Add Item",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          CustomSearchableField(
            controller: controller,
            prefixIcon: Icons.person,
            hintText: fieldHint,
            constraints: const BoxConstraints(maxHeight: 45, maxWidth: 200),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          ),
        ],
      ),
    );
  }
}
