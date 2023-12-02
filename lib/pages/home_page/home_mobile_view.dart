import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:neodisha/components/bottom_nav/bottom_nav_widget.dart';
import 'package:neodisha/pages/account.dart';
import 'package:neodisha/pages/chart.dart';
import 'package:neodisha/pages/home.dart';
import 'package:neodisha/pages/home_page/home_view_model.dart';
import 'package:neodisha/pages/tutorial.dart';

class HomeMobileView extends HookConsumerWidget {
  final HomeViewModel homeViewModel;
  const HomeMobileView({
    super.key,
    required this.homeViewModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> pages = <Widget>[Home(), Chart(), Tutorial(), Account()];

    homeViewModel.selectedTab = useState(homeViewModel.selectedTab?.value ?? 0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('NeoPhyte'),
      ),
      body: pages[homeViewModel.selectedTab!.value],
      bottomNavigationBar: BottomNavWidget(homeViewModel: homeViewModel),
    );
  }
}
