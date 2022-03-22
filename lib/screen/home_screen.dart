import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/screen/hub/hub_screen.dart';
import 'package:consultarer/screen/sessions/sessions_screen.dart';
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
              showSelectedLabels: false,
              showUnselectedLabels: false,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.black,
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
      case 1:
        return HubScreen();
      case 2:
        return SessionsScreen();
      default:
        return WorkplaceScreen(tabController: tabController);
    }
  }
}


