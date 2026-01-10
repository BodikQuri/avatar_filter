import 'package:avatar_filter/enums/poses.dart';
import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/widgets/base_modal_dialogs/base_choose_modal_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> showPosesDialog(BuildContext context, {
  required List<Poses> selectedPoses,
  required void Function(List<Poses>) onConfirm,
}) async {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return BaseChooseModalDialog<Poses>(
        values: Poses.values,
        valueToString: (e) => e.name,
        selectedValue: [...selectedPoses],

        onConfirm: onConfirm,
        title: LocaleKeys.poses_dialogs_title.tr(),
        buttonText: LocaleKeys.general_save.tr(),
      );
    },
  );
}
