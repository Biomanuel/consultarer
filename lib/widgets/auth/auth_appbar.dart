import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../util/assets.dart';
class AuthAppBar extends StatelessWidget {
  final Widget action;
  final Function()? onTapAction;
  const AuthAppBar({
    this.onTapAction,
    required this.action,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical:15.0),
          child: SizedBox(
            width: 200,
            child:Image.asset(Assets.logo),
          ),
        ),
        GestureDetector(
          onTap: onTapAction,
          child: action,
        )],
    );
  }
}
