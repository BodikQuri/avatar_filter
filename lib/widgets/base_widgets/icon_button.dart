import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/utils/svg_picture_extension.dart';
import 'package:flutter/material.dart';

enum BaseIconButtonType {
  circle,
  square;

  BorderRadius get baseBorderRadius {
    return switch (this) {
      BaseIconButtonType.circle => BorderRadius.circular(100),
      BaseIconButtonType.square => BorderRadius.circular(10),
    };
  }
}

enum BaseIconButtonSize {
  h32,
  h24;

  EdgeInsets get basePadding {
    return switch (this) {
      BaseIconButtonSize.h32 => const EdgeInsets.all(4),
      BaseIconButtonSize.h24 => const EdgeInsets.all(2),
    };
  }

  double get baseSize {
    return switch (this) {
      BaseIconButtonSize.h32 => 32,
      BaseIconButtonSize.h24 => 24,
    };
  }
}

class BaseIconButton extends StatelessWidget {
  const BaseIconButton({
    super.key,
    required this.icon,
    this.backgroundColor,
    this.backgroundDisabledColor,
    this.splashColor,
    this.onTap,
    this.padding,
    this.borderRadius,
    this.animationDuration = const Duration(milliseconds: 300),
    this.buttonType = BaseIconButtonType.circle,
    this.buttonSize = BaseIconButtonSize.h24,
    this.width,
    this.height,
    this.iconSize,
    this.iconColor,
    
  });

  final SvgGenImage icon;
  final Color? backgroundColor;
  final Color? backgroundDisabledColor;
  final Color? splashColor;
  final Color? iconColor;
  final VoidCallback? onTap;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Duration animationDuration;
  final BaseIconButtonType buttonType;
  final BaseIconButtonSize buttonSize;
  final double? width;
  final double? height;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: animationDuration,
      width: width ?? buttonSize.baseSize,
      height: height ?? buttonSize.baseSize,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? buttonType.baseBorderRadius,
        color: switch (onTap) {
          VoidCallback() => backgroundColor,
          null => backgroundDisabledColor,
        },
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          splashColor: splashColor,
          highlightColor: Colors.transparent,
          borderRadius: borderRadius ?? buttonType.baseBorderRadius,
          child: AnimatedContainer(
            duration: animationDuration,
            padding: padding ?? buttonSize.basePadding,
            child: AnimatedOpacity(
              duration: animationDuration,
              opacity: switch (onTap) {
                VoidCallback() => 1,
                null => 0.5,
              },
              child: Center(
                child: icon.svg(width: iconSize, height: iconSize).withColorFilter(color: iconColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
