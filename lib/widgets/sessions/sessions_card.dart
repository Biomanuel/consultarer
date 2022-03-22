import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
class OpenSessionsCard extends StatelessWidget {
  final String firstUser;
  final String fUserImgUrl;
  final String secondUser;
  final String sUserImgUrl;
  const OpenSessionsCard({
    required this.firstUser,
    required this.fUserImgUrl,
    required this.secondUser,
    required this.sUserImgUrl,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.roundedBorder)
      ),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Icon(Icons.more_horiz),
            ),
            Wrap(
              children: [
                Row(
                  children: [
                    CircleAvatar(backgroundImage: AssetImage(fUserImgUrl),radius: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(firstUser, style: lightTextFieldLabel.copyWith(fontWeight: FontWeight.w600, fontSize: 13),),
                    ),
                    Text(' and ', style: lightTextFieldLabel.copyWith(fontWeight: FontWeight.w600, fontSize: 13),),
                    CircleAvatar(backgroundImage: AssetImage(sUserImgUrl),),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(secondUser,style: lightTextFieldLabel.copyWith(fontWeight: FontWeight.w600, fontSize: 13)),
                    ),
                  ],
                ),
                Text('are talking about', style: lightTextFieldLabel.copyWith(fontWeight: FontWeight.w600)),
                Text('\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\"', style: lightTextFieldLabel,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
