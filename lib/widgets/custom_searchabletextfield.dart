import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';

import '../res/app_color.dart';

class CustomSearchableField extends StatelessWidget {
  final TextEditingController controller;
  final Function(String)? onSubmit;
  final TextInputType? inputType;
  final String hintText;
  final IconData prefixIcon;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;
  const CustomSearchableField({
    Key? key,
    required this.controller,
    this.inputType,
    this.onSubmit,
    this.hintText = "search",
    this.prefixIcon = Icons.search_rounded,
    this.constraints,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldSearch(
      label: hintText,
      controller: controller,
      initialList: ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'],
      decoration: InputDecoration(
        constraints: constraints,
        contentPadding: contentPadding,
        prefixIcon: Icon(prefixIcon, size: 18),
        hintText: hintText,
        fillColor: AppColors.gray,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
