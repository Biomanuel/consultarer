import 'package:consultarer/util/assets.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
class ConsultUserCard extends StatelessWidget {
  final Function()? onPressed;
  final String name;
  final String userName;
  final bool isFavTapped;

  const ConsultUserCard({
    required this.name,
    required this.userName,
    this.isFavTapped = false,
    this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed:onPressed,
                  icon: Icon(
                    isFavTapped?Icons.favorite:Icons.favorite_outline,
                    color: isFavTapped?Colors.red:Colors.black,),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                backgroundImage: AssetImage(Assets.actionImage),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(name, style: lightTextFieldLabel.copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600)),
                  Icon(Icons.verified, color: Colors.blue, size: 15,)
                ],
              ),
            ),
            Text(userName, style: lightTextFieldLabel.copyWith(fontSize: 12, color: Colors.black, fontWeight: FontWeight.w600),),
            Text('Bio: Lorem Ipsum dolor sit am', overflow: TextOverflow.ellipsis,style: cardText,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.blue,size: 20,),
                      Text('4.5(25)', style: cardText,),
                    ],
                  ),
                  Text('\$50/10mins', style: cardText,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
