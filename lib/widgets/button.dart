import 'package:consultarer/util/dimen.dart';
import 'package:flutter/material.dart';
class ConsultButton extends StatelessWidget {
  final String title;
  final bool isRow;
  final Color? buttonColor;
  final IconData? buttonIcon;
  final Color? iconColor;
  final TextStyle? titleStyle;
  final Function()? onPressed;
  const ConsultButton({
    required this.title,
    this.isRow = false,
    this.onPressed,
    this.iconColor,
    this.buttonIcon,
    this.buttonColor = Colors.white,
    this.titleStyle,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialButton(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(isRow?Dimens.roundedBorderSocial:Dimens.roundedBorder)
        ),
        onPressed: onPressed,
        height: 50,
        color: buttonColor,
        child: isRow?Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(buttonIcon, color: iconColor,)),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(left:80.0),
                child: Text(title, style: titleStyle,),
              ),
            ),

          ],
        ): Text(title, style: titleStyle,) ,
      ),
    );
  }
}
