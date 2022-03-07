import 'package:creative_pos/res/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool isLoading;
  final Color btnColor;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isLoading = false,
    this.btnColor = const Color(0xffED5C5C),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onTap(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: btnColor,
          ),
          child: isLoading
              ? const SpinKitWave(
                  color: Colors.white,
                  size: 24,
                )
              : Center(
                  child: Text(
                    text,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ),
        ),
      ),
    );
  }
}
