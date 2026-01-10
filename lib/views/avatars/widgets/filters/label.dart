import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/theme/app_colors.dart';
import 'package:avatar_filter/utils/svg_picture_extension.dart';
import 'package:flutter/material.dart';

class FilterLabel extends StatelessWidget {
  const FilterLabel({
    super.key,
    required this.label,
    required this.count,
    required this.onTap,
    this.icon,
    this.iconSize = 24,
    this.padding = const EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 6,
    ),
  });

  const FilterLabel.closeIcon({
    super.key,
    required this.onTap,
    this.icon,
    this.iconSize = 24,
    this.padding = const EdgeInsets.all(6),
  }) : label = '',
       count = 0;

  final String label;
  final SvgGenImage? icon;
  final double? iconSize;
  final int count;
  final VoidCallback onTap;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final textTheme = Theme.of(context).textTheme;
    final borderRadius = BorderRadius.circular(8);

    return InkWell(
      onTap: onTap,
      borderRadius: borderRadius,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          border: Border.all(
            color: colors.greyLight,
          ),
          borderRadius: borderRadius,
        ),
        child:
            icon?.svg(width: iconSize, height: iconSize).withColorFilter(color: colors.black) ??
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                        label,
                        style: textTheme.bodyMedium?.copyWith(
                          color: colors.black,
                          height: 1,
                        ),
                      ),
                      if (count > 0)
                        Container(
                          margin: const EdgeInsets.only(left: 4),
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(color: colors.black, shape: BoxShape.circle),
                          child: Center(
                            child: Text(
                              count.toString(),
                              style: textTheme.headlineSmall?.copyWith(color: colors.whiteMain, fontSize: 12, height: 1.3),
                            ),
                          ),
                        ),
                const SizedBox(
                  width: 12,
                ),
                Assets.icons.arrow
                    .svg(
                      width: 12,
                      height: 12,
                    )
                    .withColorFilter(color: colors.black),
              ],
            ),
      ),
    );
  }
}
