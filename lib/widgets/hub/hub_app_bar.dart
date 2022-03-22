import 'package:consultarer/util/color.dart';
import 'package:flutter/material.dart';
import '../../screen/home_view_model.dart';
import '../../util/assets.dart';
import '../../util/text_style.dart';
import 'package:stacked/stacked.dart';

class HubAppBar extends ViewModelWidget<HomeViewModel> {
  const HubAppBar({
    Key? key,
  }) : super(key: key);

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
      title: Text('HUB', style: titleStyle),
      actions: [
        InkWell(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: ConsultColor.redButtonColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
          ),
        )
      ],
    );
  }
}
