import 'package:consultarer/screen/home_view_model.dart';
import 'package:consultarer/util/dimen.dart';
import 'package:consultarer/util/text_style.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../generic_bottom_sheet_data_holders.dart';
class ProfileBottomSheet extends StatelessWidget {
  final SheetRequest request;
  final Function(SheetResponse<GenericBottomSheetResponse>) completer;
  const ProfileBottomSheet({
    required this.completer,
    required this.request,
    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: ()=> HomeViewModel(),
      builder: (context, model, _) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimens.roundedBorderSocial),
              topRight: Radius.circular(Dimens.roundedBorderSocial),
            ),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height*0.7,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.roundedBorderSocial),
                    color: Colors.grey,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.settings, size: 30,)),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: List.generate(model.profileSheetData.length, (index) => Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ListTile(
                            title: Text(model.profileSheetData[index], style: lightTextFieldLabel.copyWith(fontSize: 18),),
                            onTap: (){},
                            style: ListTileStyle.list,
                            horizontalTitleGap: 5,
                          ),
                        ),
                        Divider(),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
