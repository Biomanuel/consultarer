import 'package:flutter/material.dart';
class ConsultUserCard extends StatelessWidget {
  final Function()? onPressed;
  final String name;
  final String userName;
  const ConsultUserCard({
    required this.name,
    required this.userName,
    this.onPressed,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed:onPressed,
              icon: Icon(Icons.favorite_outline_rounded),
            ),
          ),
          CircleAvatar(),
          Row(
            children: [
              Text(name),
              Icon(Icons.verified, color: Colors.blue,)
            ],
          ),
          Text(userName),
          Text('Bio: Lorem Ipsum dolor sit am', overflow: TextOverflow.ellipsis,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.star, color: Colors.blue,),
                  Text('4.5(25)'),
                ],
              ),
              Text('\$50/10mins'),
            ],
          )
        ],
      ),
    );
  }
}
