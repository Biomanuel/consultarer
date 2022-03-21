import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
class InquiryCard extends StatelessWidget {
  final String userName;
  final String imageUrl;
  const InquiryCard({
    required this.userName,
    required this.imageUrl,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(Dimens.roundedBorder),
          topLeft: Radius.circular(Dimens.roundedBorder),
          bottomRight: Radius.circular(Dimens.roundedBorder),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(Assets.inquiryImage),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage(imageUrl),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5.0),
                          child: Text(userName, style: lightTextFieldLabel.copyWith(fontWeight: FontWeight.w600, color: Colors.black),),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor est incididunt ut labore et dolore magna aliqu enim ad minim ut veniam, quis nostrud',
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                        style: cardText.copyWith(color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
