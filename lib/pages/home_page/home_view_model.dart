import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeViewModel {
  // final Key? key;
  ValueNotifier<int>? selectedTab;
  final WidgetRef ref;
  HomeViewModel({required this.ref});
  void updatePage(int page) {
    selectedTab!.value = page;
  }

  static Future<HomeViewModel> initalizeDashboard(
      {required WidgetRef ref}) async {
    return HomeViewModel(ref: ref);
  }
}
