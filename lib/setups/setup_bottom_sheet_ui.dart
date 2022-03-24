import 'package:consultarer/bottom_sheet/profile_bottom_sheet.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app_setup.locator.dart';
import '../bottom_sheet/generic_bottom_sheet.dart';
import '../core/enums/bottomsheet_type.dart';
import '../generic_bottom_sheet_data_holders.dart';

void setupBottomSheetUi() {
  final bottomSheetService = locator<BottomSheetService>();

  final builders = {
    BottomSheetTypee.ProfileBottomSheet: (context, sheetRequest, completer) =>
        ProfileBottomSheet(
          request: sheetRequest,
          completer: completer,
        ),
    // BottomSheetType.Message: (context, sheetRequest, completer) =>
    //     MessageBottomSheet(
    //       request: sheetRequest,
    //       completer: completer,
    //     ),
    BottomSheetTypee.Generic: (
      context,
      sheetRequest,
      Function(SheetResponse<GenericBottomSheetResponse>) completer,
    ) =>
        GenericBottomSheet(
          request: sheetRequest,
          completer: completer,
        ),
  };

  bottomSheetService.setCustomSheetBuilders(builders);
}
