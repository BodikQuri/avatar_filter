import 'package:avatar_filter/enums/age_ranges.dart';
import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/widgets/base_modal_dialogs/base_choose_modal_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> showAgeRangesDialog(BuildContext context, {
  required List<AgeRanges> selectedAgeRanges,
  required void Function(List<AgeRanges>) onConfirm,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return BaseChooseModalDialog<AgeRanges>(
        values: AgeRanges.values,
        valueToString: (e) => e.name,
        valueToSubtitle: (e) => e.range,
        
        selectedValue: [...selectedAgeRanges],
        
        onConfirm: onConfirm,
        title: LocaleKeys.age_ranges_dialogs_title.tr(),

        buttonText: LocaleKeys.general_save.tr(),
      );
    },
  );
}
