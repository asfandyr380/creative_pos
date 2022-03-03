import 'package:creative_pos/models/nav_item_model.dart';
import 'package:creative_pos/res/app_color.dart';
import 'package:creative_pos/view/home/componants/nav_item.dart';
import 'package:flutter/material.dart';

class SideNavBar extends StatefulWidget {
  final List<NavitemModel> items;
  final Function(int) onSelect;
  final int currentIndex;
  const SideNavBar(
      {Key? key,
      required this.items,
      required this.onSelect,
      required this.currentIndex})
      : super(key: key);

  @override
  State<SideNavBar> createState() => _SideNavBarState();
}

class _SideNavBarState extends State<SideNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        color: AppColors.darkblue,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 15,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Creative Pos",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 28, color: Colors.white),
          ),
          Divider(color: Colors.white.withOpacity(0.2)),
          const SizedBox(height: 24),
          ListView.builder(
              shrinkWrap: true,
              itemCount: widget.items.length,
              itemBuilder: (ctx, i) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: NavItem(
                    title: widget.items[i].title,
                    icon: widget.items[i].icon,
                    onSelect: () => widget.onSelect(i),
                    currentIndex: widget.currentIndex,
                    selectIndex: i,
                  ),
                );
              })
        ],
      ),
    );
  }
}
