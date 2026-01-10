import 'package:avatar_filter/enums/gender.dart';
import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/widgets/base_modal_dialogs/base_choose_modal_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> showGenderDialog(BuildContext context, {
  required List<Gender> selectedGenders,
  required void Function(List<Gender>) onConfirm,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return BaseChooseModalDialog<Gender>(
        values: Gender.values,
        valueToString: (e) => e.name,
        selectedValue: [...selectedGenders],

        onConfirm: onConfirm,
        title: LocaleKeys.gender_dialogs_title.tr(),
        buttonText: LocaleKeys.general_save.tr(),
      );
    },
  );
}
