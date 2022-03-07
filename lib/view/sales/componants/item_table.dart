import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../res/app_color.dart';

class ItemTable extends StatelessWidget {
  final List<String> columns;
  final bool loading;
  const ItemTable({
    Key? key,
    required this.columns,
    this.loading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
          )
        ],
      ),
      child: Column(
        children: [
          // Column Headers
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 6),
              ],
              color: AppColors.whitegreen,
            ),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var item in columns)
                  SizedBox(
                    width: item == "Item" ? 140 : 60,
                    child: Text(
                      item,
                      style: const TextStyle(
                          color: Color(0xff524F4F),
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ),
              ],
            ),
          ),
          loading ? SpinKitThreeInOut(color: AppColors.red) : const SizedBox(),
          // Column data
          ListView.separated(
            shrinkWrap: true,
            itemCount: 10,
            separatorBuilder: (ctx, i) => const Divider(
              color: Color(0xff969090),
              thickness: 0.3,
            ),
            itemBuilder: (ctx, i) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 140,
                      child: Text(
                        'T.Shirt XL',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        '15',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        '10',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        '15%',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        '12,221',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      child: GestureDetector(
                        onTap: () {},
                        child: const MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Icon(
                            FontAwesomeIcons.trashAlt,
                            color: Colors.red,
                            size: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
