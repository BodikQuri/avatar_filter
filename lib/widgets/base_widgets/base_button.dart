import 'package:avatar_filter/utils/const.dart';
import 'package:flutter/material.dart';

enum BaseButtonSize {
  h62,
  h32
  ;

  EdgeInsets get basePadding {
    return switch (this) {
      BaseButtonSize.h62 => const EdgeInsets.symmetric(vertical: 25, horizontal: 32),
      BaseButtonSize.h32 => const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    };
  }

  double get baseHeight {
    return switch (this) {
      BaseButtonSize.h62 => 62,
      BaseButtonSize.h32 => 32,
    };
  }

  TextStyle? getBaseTextStyle(BuildContext context) {
    final TextTheme textStyles = Theme.of(context).textTheme;

    return switch (this) {
      BaseButtonSize.h62 => textStyles.bodyLarge?.copyWith(height: 1),
      BaseButtonSize.h32 => textStyles.bodySmall?.copyWith(height: 1),
    };
  }
}

class BaseButton extends StatelessWidget {
  const BaseButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.backgroundDisabledColor,
    required this.foregroundColor,
    required this.foregroundDisabledColor,
    required this.splashColor,
    this.border,
    this.onTap,
    this.padding,
    this.animationDuration = kDefaultAnimationDuration,
    this.iconLeft,
    this.iconLeftForegroundColor,
    this.iconLeftForegroundDisabledColor,
    this.iconLeftBlendMode = BlendMode.srcIn,
    this.iconLeftPadding,
    this.iconRight,
    this.iconRightForegroundColor,
    this.iconRightForegroundDisabledColor,
    this.iconRightBlendMode = BlendMode.srcIn,
    this.iconRightPadding,
    this.buttonSize = BaseButtonSize.h62,
    this.minWidth = 0,
    this.maxHeight,
    this.borderRadius,
    this.isExpand = false,
    this.textStyle,
    this.loading = false,
    this.enabled = true,
  });

  final String text;
  final Color backgroundColor;
  final Color backgroundDisabledColor;
  final Color foregroundColor;
  final Color foregroundDisabledColor;
  final Color splashColor;
  final BoxBorder? border;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final Duration animationDuration;
  final Widget? iconLeft;
  final Color? iconLeftForegroundColor;
  final Color? iconLeftForegroundDisabledColor;
  final BlendMode iconLeftBlendMode;
  final EdgeInsets? iconLeftPadding;
  final Widget? iconRight;
  final Color? iconRightForegroundColor;
  final Color? iconRightForegroundDisabledColor;
  final BlendMode iconRightBlendMode;
  final EdgeInsets? iconRightPadding;
  final BaseButtonSize buttonSize;
  final double minWidth;
  final double? maxHeight;
  final BorderRadius? borderRadius;
  final bool isExpand;
  final bool loading;
  final bool enabled;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final TextStyle effectiveTextStyle = ((textStyle ?? buttonSize.getBaseTextStyle(context)) ?? const TextStyle())
        .copyWith(
          color: switch (enabled) {
            true => foregroundColor,
            false => foregroundDisabledColor,
          },
        );
    final BorderRadius effectiveBorderRadius = borderRadius ?? BorderRadius.circular(100);

    Widget buttonContent = AnimatedSize(
      duration: animationDuration,
      curve: Curves.easeInOut,
      child: loading
          ? const LinearProgressIndicator()
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _ButtonIconWidget(
                  enabled: enabled,
                  iconBlendMode: iconLeftBlendMode,
                  icon: iconLeft,
                  iconForegroundColor: iconLeftForegroundColor,
                  iconForegroundDisabledColor: iconLeftForegroundDisabledColor,
                  iconPadding: iconLeftPadding,
                ),
                Flexible(
                  child: AnimatedSwitcher(
                    duration: animationDuration,
                    child: Text(
                      text,
                      key: ValueKey<String>(text),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: effectiveTextStyle,
                    ),
                  ),
                ),
                _ButtonIconWidget(
                  enabled: enabled,
                  iconBlendMode: iconRightBlendMode,
                  icon: iconRight,
                  iconForegroundColor: iconRightForegroundColor,
                  iconForegroundDisabledColor: iconRightForegroundDisabledColor,
                  iconPadding: iconRightPadding,
                ),
              ],
            ),
    );

    if (isExpand) buttonContent = Center(child: buttonContent);

    return AnimatedContainer(
      duration: animationDuration,
      constraints: BoxConstraints(
        minWidth: minWidth,
        maxHeight: maxHeight ?? buttonSize.baseHeight,
        minHeight: buttonSize.baseHeight,
      ),
      decoration: BoxDecoration(
        border: border,
        borderRadius: effectiveBorderRadius,
        color: switch (enabled) {
          true => backgroundColor,
          false => backgroundDisabledColor,
        },
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (loading || !enabled) ? null : onTap,
          splashColor: splashColor,
          highlightColor: Colors.transparent,
          borderRadius: effectiveBorderRadius,
          child: AnimatedContainer(
            duration: animationDuration,
            padding: padding ?? buttonSize.basePadding,
            child: buttonContent,
          ),
        ),
      ),
    );
  }
}

class _ButtonIconWidget extends StatelessWidget {
  const _ButtonIconWidget({
    required this.enabled,
    required this.iconBlendMode,
    required this.icon,
    required this.iconForegroundColor,
    required this.iconForegroundDisabledColor,
    required this.iconPadding,
  });

  final bool enabled;
  final BlendMode iconBlendMode;
  final Widget? icon;
  final Color? iconForegroundColor;
  final Color? iconForegroundDisabledColor;
  final EdgeInsets? iconPadding;

  @override
  Widget build(BuildContext context) {
    if (icon == null) return const SizedBox.shrink();

    return Padding(
      padding: iconPadding ?? const EdgeInsets.symmetric(horizontal: 8),
      child: IconTheme(
        data: IconThemeData(
          color: switch (enabled) {
            true => iconForegroundColor,
            false => iconForegroundDisabledColor,
          },
        ),
        child: ColorFiltered(
          colorFilter: ColorFilter.mode(
            switch (enabled) {
              true => iconForegroundColor ?? Colors.transparent,
              false => iconForegroundDisabledColor ?? Colors.transparent,
            },
            iconBlendMode,
          ),
          child: icon,
        ),
      ),
    );
  }
}
