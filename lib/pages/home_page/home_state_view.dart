import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:neodisha/pages/home_page/home_mobile_view.dart';
import 'package:neodisha/pages/home_page/home_view_model.dart';

class HomeStateView extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<HomeViewModel>(
      future: HomeViewModel.initalizeDashboard(ref: ref),
      initialData: null,
      builder: (BuildContext context, AsyncSnapshot<HomeViewModel> snapshot) {
        HomeViewModel homeViewModel = snapshot.data!;
        return HomeMobileView(homeViewModel: homeViewModel);
      },
    );
  }
}
