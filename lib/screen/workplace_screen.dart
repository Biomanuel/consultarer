import 'package:flutter/material.dart';

import '../util/assets.dart';
import '../util/text_style.dart';
class WorkPlaceScreen extends StatelessWidget {
  const WorkPlaceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(Assets.favicon),
        title: Text('WORKPLACE', style: textFieldLabel.copyWith(color: Colors.black),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite),),
          InkWell(
            child: Image.asset(Assets.actionImage),
          )
        ],
      ),
    );
  }
}
