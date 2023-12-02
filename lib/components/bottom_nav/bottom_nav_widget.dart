import 'package:flutter/material.dart';
import 'package:neodisha/components/bottom_nav/nav_button_widget.dart';
import 'package:neodisha/pages/home_page/home_view_model.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.homeViewModel,
  });

  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      child: Row(
        // mainAxisSize: MainAxisSize.max,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavButtonWidget(
              iconData: Icons.home_outlined,
              iconDataSelected: Icons.home,
              selectedIndex: 0,
              homeViewModel: homeViewModel),
          NavButtonWidget(
              iconData: Icons.chat_outlined,
              iconDataSelected: Icons.chat,
              selectedIndex: 1,
              homeViewModel: homeViewModel),
          const Padding(padding: EdgeInsets.only(right: 24, left: 24)),
          NavButtonWidget(
              iconData: Icons.book_outlined,
              iconDataSelected: Icons.book,
              selectedIndex: 2,
              homeViewModel: homeViewModel),
          NavButtonWidget(
              iconData: Icons.account_circle_outlined,
              iconDataSelected: Icons.account_circle,
              selectedIndex: 3,
              homeViewModel: homeViewModel),
        ],
      ),
    );
  }
}
