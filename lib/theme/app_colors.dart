import 'package:flutter/material.dart';

class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.brightness,
    required this.primary,
    required this.whiteMain,
    required this.black,
    required this.greyMid,
    required this.greyLight,
    required this.avatarGradient,
  });

  final Brightness brightness;
  final Color primary;
  final Color whiteMain;
  final Color black;
  final Color greyMid;
  final Color greyLight;
  final Gradient avatarGradient;

  @override
  ThemeExtension<AppColors> copyWith({
    Brightness? brightness,
    Color? primary,
    Color? whiteMain,
    Color? black,
    Color? greyMid,
    Color? greyLight,
    Gradient? avatarGradient,
  }) {
    return AppColors(
      brightness: brightness ?? this.brightness,
      primary: primary ?? this.primary,
      whiteMain: whiteMain ?? this.whiteMain,
      black: black ?? this.black,
      greyMid: greyMid ?? this.greyMid,
      greyLight: greyLight ?? this.greyLight,
      avatarGradient: avatarGradient ?? this.avatarGradient,
    );
  }

  @override
  ThemeExtension<AppColors> lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other == null) return this;
    if (other is! AppColors) return this;
    return AppColors(
      brightness: t < 0.5 ? brightness : other.brightness,
      primary: Color.lerp(primary, other.primary, t)!,
      whiteMain: Color.lerp(whiteMain, other.whiteMain, t)!,
      black: Color.lerp(black, other.black, t)!,
      greyMid: Color.lerp(greyMid, other.greyMid, t)!,
      greyLight: Color.lerp(greyLight, other.greyLight, t)!,
      avatarGradient: Gradient.lerp(avatarGradient, other.avatarGradient, t)!,
    );
  }
}

final appLightColors = AppColors(
  brightness: Brightness.light,
  primary: Colors.white,
  whiteMain: Colors.white,
  black: Colors.black,
  greyMid: const Color(0xFFCAD4DD),
  greyLight: const Color(0xFFF2F4F6),
  avatarGradient: LinearGradient(
    colors: [
      Colors.black.withValues(alpha: 0.3),
      Colors.black.withValues(alpha: 0.05),
      Colors.black.withValues(alpha: 0.0),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  ),
);
