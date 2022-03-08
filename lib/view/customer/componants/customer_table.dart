import 'package:creative_pos/models/customer_model/customer_model.dart';
import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/services/db_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CustomerTable extends StatelessWidget {
  final List<String> columns;
  final bool loading;
  final String searchString;
  const CustomerTable({
    Key? key,
    required this.columns,
    this.loading = false,
    this.searchString = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
              color: AppColors.whitegreen,
            ),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var item in columns)
                  SizedBox(
                    width: 120,
                    child: Text(
                      item,
                      style: const TextStyle(
                          color: Color(0xff524F4F),
                          fontWeight: FontWeight.w600,
                          fontSize: 24),
                    ),
                  ),
              ],
            ),
          ),
          loading ? SpinKitThreeInOut(color: AppColors.red) : const SizedBox(),
          // Column data
          ValueListenableBuilder<Box<CustomerModel>>(
            valueListenable: Boxes.getCustomerBox().listenable(),
            builder: (ctx, box, _) {
              final customer = box.values
                  .where((item) =>
                      searchString.isEmpty ? true : item.name == searchString)
                  .toList()
                  .cast<CustomerModel>();
              return ListView.separated(
                shrinkWrap: true,
                itemCount: customer.length,
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
                          width: 120,
                          child: Text(
                            customer[i].name,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            customer[i].shopName,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            customer[i].phone,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            '${customer[i].give}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 120,
                          child: Text(
                            '${customer[i].take}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 120,
                          child: Icon(
                            FontAwesomeIcons.ellipsisH,
                          ),
                        )
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
