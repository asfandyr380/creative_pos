import 'package:flutter/material.dart';

import '../res/app_color.dart';

class CustomField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onSubmit;
  final TextInputType? inputType;
  final FocusNode? focusNode;
  final String hintText;
  final IconData prefixIcon;
  final BoxConstraints? constraints;
  final EdgeInsetsGeometry? contentPadding;
  const CustomField({
    Key? key,
    this.controller,
    this.focusNode,
    this.inputType,
    this.onSubmit,
    this.hintText = "search",
    this.prefixIcon = Icons.search_rounded,
    this.constraints,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: onSubmit,
      keyboardType: inputType,
      focusNode: focusNode,
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
