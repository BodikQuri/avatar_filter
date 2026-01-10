import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/theme/app_colors.dart';
import 'package:avatar_filter/utils/const.dart';
import 'package:flutter/material.dart';

class BaseCheckbox extends StatelessWidget {
  const BaseCheckbox({super.key, required this.value, this.onChanged});

  final bool value;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    final AppColors colors = Theme.of(context).extension<AppColors>()!;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onChanged != null ? () => onChanged?.call(!value) : null,
        child: AnimatedContainer(
          duration: kDefaultAnimationDuration,
          decoration: BoxDecoration(
            border: Border.all(color: value ? colors.black : colors.greyMid),
            borderRadius: BorderRadius.circular(5),
            color: value ? colors.black : colors.whiteMain,
          ),
          child: Assets.icons.check.svg(
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
