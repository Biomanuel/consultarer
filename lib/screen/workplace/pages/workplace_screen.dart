import 'package:flutter/material.dart';
import '../../../widgets/workplace/workplace_appbar.dart';
import '../../home_view_model.dart';
import 'package:stacked/stacked.dart';

import 'consult_user_page.dart';
import 'inquiry_page.dart';
class WorkplaceScreen extends StatelessWidget {
  const WorkplaceScreen({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: ()=> HomeViewModel(),
        builder: (context, model, _) {
          return Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(180),
                child: WorkplaceAppBar(tabController: tabController)),
            body: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  ConsultUserPage(),
                  InquiryPage(),
                ],
              ),
            ),
          );
        }
    );
  }
}

