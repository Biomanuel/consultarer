import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
class ConsultTextField extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? suffixIcon;
  final Function()? onPressed;
  final bool isLogin;
  const ConsultTextField({
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
          Card(
            color: isLogin?Colors.white:ConsultColor.textFieldColor,
            elevation: isLogin?5:0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide.none,
            ),
            child: TextFormField(
              obscureText: obscureText,
              controller: controller,
              keyboardType: keyboardType,
              onTap: () {},
              enableSuggestions: true,
              decoration: InputDecoration(
                label: Text(label),
                hintStyle: textFieldLabel,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30),
                ),
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