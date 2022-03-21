import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
class ConsultTextField extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? suffixIcon;
  final Function()? onPressed;
  final Widget? suffixWidget;
  final FormFieldValidator<String>? validator;
  final bool isLogin;
  const ConsultTextField({
    this.suffixWidget,
    this.validator,
    this.isLogin = false,
    this.keyboardType,
    required this.label,
    this.onPressed,
    this.suffixIcon,
    required this.controller,
    this.obscureText = false,

    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Stack(
        children: [
          TextFormField(
            textInputAction: label =='Password'?TextInputAction.done:TextInputAction.next,
            validator: validator,
            obscureText: obscureText,
            controller: controller,
            keyboardType: keyboardType,
            onTap: () {},
            enableSuggestions: true,
            decoration: InputDecoration(
              suffix: suffixWidget,
              filled: true,
              fillColor: isLogin?Colors.white:ConsultColor.textFieldColor,
              hintText: label,
              hintStyle: textFieldLabel,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
                borderRadius: BorderRadius.circular(Dimens.roundedBorder),
              ),
            ),
          ),
          Positioned(
            top: 8,
              right: 5,
              child: IconButton(onPressed: onPressed, icon: Icon(suffixIcon)))
        ],
      ),
    );
  }
}