import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';

class OpenSessionsCard extends StatelessWidget {
  final String firstUser;
  final String fUserImgUrl;
  final String secondUser;
  final String sUserImgUrl;
  const OpenSessionsCard(
      {required this.firstUser,
      required this.fUserImgUrl,
      required this.secondUser,
      required this.sUserImgUrl,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.roundedBorder)),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: PopupMenuButton(
                    icon: Icon(Icons.more_horiz),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(Icons.visibility_off),
                              Text('Hide Post')
                            ],
                          ),
                        ),
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.report),
                          Text('Report Title'),
                        ],
                      ),
                    ),
                      ]),
            ),
            Wrap(children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(fUserImgUrl)),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        firstUser,
                        style: lightTextFieldLabel.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                      ),
                    ),
                    Text(
                      ' and ',
                      style: lightTextFieldLabel.copyWith(
                          fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(sUserImgUrl),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(secondUser,
                          style: lightTextFieldLabel.copyWith(
                              fontWeight: FontWeight.w600, fontSize: 18, color: Colors.black)),
                    ),
                ],
              ),

              RichText(
                text: TextSpan(
                    text: 'are talking about',
                    style: lightTextFieldLabel.copyWith(
                        fontWeight: FontWeight.w600, fontSize: 16, color: Colors.black),
                    children: [
                      TextSpan(
                        text:
                            '\ "Lorem ipsum dolor sit amet, consectetur adipiscing elit\"',
                        style: lightTextFieldLabel.copyWith(fontSize: 16, color: Colors.black),
                      ),
                    ]),
                //     child: Text('are talking about', style: lightTextFieldLabel.copyWith(fontWeight: FontWeight.w600))),
                // Text('\"Lorem ipsum dolor sit amet, consectetur adipiscing elit\"', style: lightTextFieldLabel,),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
