import 'package:flutter/material.dart';
import '../../../res/app_color.dart';

class NavItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function onSelect;
  final int currentIndex;
  final int selectIndex;
  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.onSelect,
    required this.currentIndex,
    required this.selectIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => onSelect(),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color:
                currentIndex == selectIndex ? AppColors.red : Colors.transparent,
            borderRadius: BorderRadius.circular(9),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 20,
            children: [
              Icon(
                icon,
                color: currentIndex == selectIndex
                    ? Colors.white
                    : AppColors.lightgray,
                size: 32,
              ),
              Text(
                title,
                style: TextStyle(
                  color: currentIndex == selectIndex
                      ? Colors.white
                      : AppColors.lightgray,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
