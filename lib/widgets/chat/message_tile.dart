import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';

import '../../util/assets.dart';
class MessageTile extends StatelessWidget {
  final String name;
  final String brief;
  final Function()? onTap;
  const MessageTile({
    this.onTap,
    required this.name,
    required this.brief,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(Assets.actionImage),),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name, style:  textFieldLabel.copyWith(color: Colors.black, fontSize: 14),),
                            Text(brief, style: textFieldLabel,),
                          ],
                        ),
                      )
                    ],
                  ), Column(
                    children: [
                      Text('5 mins', style: cardText,),
                      CircleAvatar(
                        backgroundColor: ConsultColor.redButtonColor,
                        child: Text('1',),
                        radius: 10,
                      )
                    ],
                  )
                ],
              ),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
