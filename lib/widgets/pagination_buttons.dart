import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../res/app_color.dart';

class PaginationButtons extends StatefulWidget {
  final Function() next;
  final Function() back;
  final int totalPages;
  final int currentPage;
  const PaginationButtons({
    Key? key,
    required this.next,
    required this.back,
    this.currentPage = 1,
    this.totalPages = 10,
  }) : super(key: key);

  @override
  State<PaginationButtons> createState() => _PaginationButtonsState();
}

class _PaginationButtonsState extends State<PaginationButtons> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: widget.back,
            child: Container(
              width: 90,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.ligterblue,
                  borderRadius: BorderRadius.circular(26)),
              child: const Icon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          "${widget.currentPage}-${widget.totalPages}",
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w600),
        ),
        const SizedBox(width: 10),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: widget.back,
            child: Container(
              width: 90,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.ligterblue,
                  borderRadius: BorderRadius.circular(26)),
              child: const Icon(
                FontAwesomeIcons.arrowRight,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
