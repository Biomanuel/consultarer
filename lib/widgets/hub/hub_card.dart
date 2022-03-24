import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../screen/home_view_model.dart';
class HubCard extends ViewModelWidget<HomeViewModel> {
  final String imgUrl;
  final String hubImageUrl;
  final String name;
  final String userName;
  final String time;
  const HubCard({
    required this.name,
    required this.userName,
    required this.time,
    required this.imgUrl,
    required this.hubImageUrl,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, model) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.7,
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(imgUrl),
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
                  ),
                  Row(
                    children: [
                      Text(time, style: lightTextFieldLabel,),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: PopupMenuButton(
                            itemBuilder: (context)=> [
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
                                    Icon(Icons.block),
                                    Text('Block User'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Icon(Icons.report),
                                    Text('Report User'),
                                  ],
                                ),
                              ),
                              PopupMenuItem(
                                child: Row(
                                  children: [
                                    Icon(Icons.report),
                                    Text('Report post'),
                                  ],
                                ),
                              ),
                            ],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(Dimens.roundedBorder),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
              Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor est dela incididunt ut labore et dolore magna aliqu enim ad minim ut veniam, quis nostrud Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor est incididunt un consectetur adipiscing elit, sed do eiusmod tempor est incididunt ut labore et dolore il est magna aliqu enim ad minim ut veniam, quis nostrud',
              maxLines: 5,
                style: cardText.copyWith(fontSize: 14),
                overflow: TextOverflow.ellipsis,
              ),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(hubImageUrl),
                    )
                  ),
                ),
              ),
              // Image.asset(Assets.hubImage),
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

class HubPopUpMenu extends StatelessWidget {
 final IconData? icon;
 final String desc;
  const HubPopUpMenu({
    required this.desc,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(icon),
          Text(desc),
        ],
      ),
    );
  }
}
