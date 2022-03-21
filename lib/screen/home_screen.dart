import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/screen/workplace/pages/workplace_screen.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../core/lists.dart';
class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabController tabController = useTabController(initialLength: 2,initialIndex: 0);
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: ()=> HomeViewModel(),
      builder: (context, model, _) {
        return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              elevation: 2,
              items: List.generate(bottomNavBarItem.length, (index) =>bottomNavBarItem[index]),
              currentIndex: model.navIndex,
              onTap: (index)=> model.OnItemSelected(index),

            ),
            body: getCurrentPage(model.navIndex, tabController));
      }
    );
  }
  Widget getCurrentPage(int index, tabController) {
    switch (index) {
      case 0:
        return WorkplaceScreen(tabController: tabController);
      default:
        return WorkplaceScreen(tabController: tabController);
    }
  }
}


