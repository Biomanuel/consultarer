import 'package:consultarer/screen/auth/sign_up_page_three.dart';
import 'package:consultarer/util/color.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';

class ConsultDropDown extends StatelessWidget {
  final void Function(dynamic)? onChanged;
  final String groupValue;
  final String dropDownHint;
  final List dropDownList;
  ConsultDropDown({
    required this.dropDownList,
    required this.dropDownHint,
      required this.groupValue,
      this.onChanged,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: ConsultColor.textFieldColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
                onChanged: onChanged,
                borderRadius: BorderRadius.circular(10),
                isExpanded: true,
                style: textFieldLabel.copyWith(color: Colors.black),
                value: groupValue,
                hint: Text(dropDownHint),
                icon: Icon(Icons.keyboard_arrow_down),
                items: dropDownList.map((value) {
                  return DropdownMenuItem(
                    child: ListTile(
                        selectedTileColor: ConsultColor.textFieldColor,
                        title: Text(value)),
                    value: value,
                  );
                }).toList()),
          ),
        ),
      ),
    );
  }
}
// class ConsultDropDownRadio extends StatelessWidget {
//   final void Function(dynamic)? onChanged;
//   final String groupValue;
//   final String dropDownHint;
//   final List dropDownList;
//   ConsultDropDownRadio({
//     required this.dropDownList,
//     required this.dropDownHint,
//     required this.groupValue,
//     this.onChanged,
//     Key? key})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 60,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30),
//               topLeft: Radius.circular(30),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8.0),
//           child: DropdownButtonHideUnderline(
//             child: DropdownButton(
//                 onChanged: onChanged,
//                 borderRadius: BorderRadius.circular(10),
//                 isExpanded: true,
//                 style: textFieldLabel.copyWith(color: Colors.black),
//                 value: groupValue,
//                 hint: Text(dropDownHint),
//                 icon: Icon(Icons.keyboard_arrow_down),
//                 items: dropDownList.map((value) {
//                   return DropdownMenuItem(
//                     child: LevelTile(
//                       title: value,
//                     ),
//                     value: value,
//                   );
//                 }).toList()),
//           ),
//         ),
//       ),
//     );
//   }
// }
