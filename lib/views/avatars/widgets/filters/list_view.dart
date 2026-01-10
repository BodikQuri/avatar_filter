import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/views/avatars/controller/avatars_filter_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../filters_dialog/age_ranges_dialogs.dart';
import '../filters_dialog/gender_dialogs.dart';
import '../filters_dialog/poses_dialogs.dart';
import 'label.dart';

class FiltersListView extends StatefulWidget {
  const FiltersListView({super.key});

  @override
  State<FiltersListView> createState() => _FiltersListViewState();
}

class _FiltersListViewState extends State<FiltersListView> {
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AvatarsFilterController>();
    const double spacer = 8;

    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 12, bottom: 12),
        child: ListView(
          scrollDirection: Axis.horizontal,

          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            if (controller.hasActiveFilters)
              Padding(
                padding: const EdgeInsets.only(right: spacer),
                child: FilterLabel.closeIcon(
                  icon: Assets.icons.close,
                  onTap: () {
                    controller.clearFilters();
                  },
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(right: spacer),
              child: FilterLabel(
                label: LocaleKeys.list_view_label_gender.tr(),
                count: controller.selectedGenders.length,
                onTap: () {
                  showGenderDialog(
                    context,
                    selectedGenders: controller.selectedGenders,
                    onConfirm: (selected) {
                      controller.selectGender(selected);
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: spacer),
              child: FilterLabel(
                label: LocaleKeys.list_view_label_age.tr(),
                count: controller.selectedAgeRanges.length,
                onTap: () {
                  showAgeRangesDialog(
                    context,
                    selectedAgeRanges: controller.selectedAgeRanges,
                    onConfirm: (selected) {
                      controller.selectAgeRanges(selected);
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: spacer),
              child: FilterLabel(
                label: LocaleKeys.list_view_label_pose.tr(),
                count: controller.selectedPoses.length,
                onTap: () {
                  showPosesDialog(
                    context,
                    selectedPoses: controller.selectedPoses,
                    onConfirm: (selected) {
                      controller.selectPoses(selected);
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
