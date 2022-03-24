import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';

import '../../util/assets.dart';
class SuggestedUsersCard extends StatelessWidget {
  final String name;
  final String username;
  final Function()? onLiked;
  final bool isLiked;
  const SuggestedUsersCard({
    required this.name,
    required this.username,
    this.isLiked = false,
    this.onLiked,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        elevation: 3,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(Assets.actionImage),
                        radius: 50,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(name, style: lightTextFieldLabel.copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),),
                              Icon(Icons.verified, color: Colors.blue,),
                            ],
                          ),
                          Text(username, style: lightTextFieldLabel.copyWith(color: Colors.black, fontSize: 12,fontWeight: FontWeight.w600),),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Positioned(
             top: 10,
              right: 0,
              child: IconButton(
                onPressed: onLiked,
                icon: Icon(isLiked?Icons.favorite:Icons.favorite_outline, color: isLiked?Colors.red:Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
