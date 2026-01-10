import 'package:avatar_filter/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'base_button.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.text, required this.onTap, this.enabled = true, this.loading = false});

  final String text;
  final VoidCallback? onTap;
  final bool enabled;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final AppColors colors = Theme.of(context).extension<AppColors>()!;

    return BaseButton(
      onTap: onTap,
      backgroundColor: colors.black,
      backgroundDisabledColor: colors.black.withAlpha(50),
      foregroundColor: colors.whiteMain,
      foregroundDisabledColor: colors.whiteMain.withAlpha(50),
      splashColor: colors.black.withAlpha(90),
      enabled: enabled,
      loading: loading,
      text: text,
      isExpand: true,
    );
  }
}
