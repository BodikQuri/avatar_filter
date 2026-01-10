import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:avatar_filter/theme/app_colors.dart';
import 'package:avatar_filter/views/avatars/controller/avatars_filter_controller.dart';
import 'package:avatar_filter/widgets/empty_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EmptyFiltersWidget extends StatelessWidget {
  const EmptyFiltersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final AppColors colors = Theme.of(context).extension<AppColors>()!;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const EmptyWWidget(),
        Text(
          LocaleKeys.empty_filters_title.tr(),
          style: textTheme.headlineSmall?.copyWith(color: colors.black),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                context.read<AvatarsFilterController>().clearFilters();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 35),
                child: Text(
                  LocaleKeys.empty_filters_button.tr(),
                  style: TextStyle(
                    color: colors.black,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
