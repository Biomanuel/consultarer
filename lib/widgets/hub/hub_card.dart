import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
class HubCard extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String userName;
  final String time;
  const HubCard({
    required this.name,
    required this.userName,
    required this.time,
    required this.imgUrl,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.55,
      child: Card(
        elevation: 5,
        child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(Assets.actionImage),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name, style: textFieldLabel.copyWith(color: Colors.black),),
                            Text(userName, style: lightTextFieldLabel,)
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(time, style: lightTextFieldLabel,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),

                ],
              ),
              Expanded(
                child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor est dela incididunt ut labore et dolore magna aliqu enim ad minim ut veniam, quis nostrud Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor est incididunt un consectetur adipiscing elit, sed do eiusmod tempor est incididunt ut labore et dolore il est magna aliqu enim ad minim ut veniam, quis nostrud',
                maxLines: 5,
                  style: cardText,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Image.asset(Assets.hubImage),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text('Reactions', style: lightTextFieldLabel,),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.analytics),
                        Padding(
                          padding: const EdgeInsets.only( left: 8.0),
                          child: Text('Analytics', style: lightTextFieldLabel,),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
            )
        ),
      ),
      );
  }
}
