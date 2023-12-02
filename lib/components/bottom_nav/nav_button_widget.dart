import 'package:flutter/material.dart';
import 'package:neodisha/pages/home_page/home_view_model.dart';

class NavButtonWidget extends StatelessWidget {
  const NavButtonWidget({
    Key? key,
    required this.iconData,
    required this.iconDataSelected,
    required this.selectedIndex,
    required this.homeViewModel,
  }) : super(key: key);

  final IconData iconData;
  final IconData iconDataSelected;
  final int selectedIndex;
  final HomeViewModel homeViewModel;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(homeViewModel.selectedTab!.value == selectedIndex
          ? iconDataSelected
          : iconData),
      color: Colors.white,
      iconSize: homeViewModel.selectedTab!.value == selectedIndex ? 36 : 24,
      padding: EdgeInsets.fromLTRB(
          homeViewModel.selectedTab!.value == selectedIndex ? 6 : 8,
          12,
          homeViewModel.selectedTab!.value == selectedIndex ? 6 : 8,
          16),
      onPressed: () {
        homeViewModel.selectedTab!.value = selectedIndex;
      },
    );
  }
}
