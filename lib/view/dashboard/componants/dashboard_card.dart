import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String count;
  final String title;
  final IconData icon;
  final Color iconBoxColor;
  final bool isCurrency;
  const DashboardCard({
    Key? key,
    required this.count,
    required this.title,
    required this.icon,
    this.iconBoxColor = Colors.red,
    this.isCurrency = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 136,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 110,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 12,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xff6A6A6A),
                      fontSize: 28,
                    ),
                  ),
                  Wrap(
                    spacing: 5,
                    children: [
                      isCurrency
                          ? const Text(
                              "Rs",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            )
                          : const SizedBox(),
                      Text(
                        count,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
              color: iconBoxColor,
              borderRadius: BorderRadius.circular(6),
            ),
            margin: const EdgeInsets.only(left: 25),
            alignment: Alignment.center,
            child: Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}
