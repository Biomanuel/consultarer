import 'package:flutter/material.dart';
import 'package:consultarer/util/color.dart';
import 'package:flutter/material.dart';
import '../../screen/home_view_model.dart';
import '../../util/assets.dart';
import '../../util/text_style.dart';
import 'package:stacked/stacked.dart';

class SessionsAppBar extends ViewModelWidget<HomeViewModel> {
  const SessionsAppBar({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context, model) {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(Assets.actionImage),
      ),
      title: Text('OPEN SESSIONS', style: titleStyle),
    );
  }
}