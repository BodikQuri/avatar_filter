import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension SvgPictureExtension on SvgPicture {
  SvgPicture withColorFilter({Color? color, BlendMode blendMode = BlendMode.srcIn}) {
    return SvgPicture(
      bytesLoader,
      colorFilter: switch (color) {
        final Color color => ColorFilter.mode(color, blendMode),
        _ => null,
      },
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }
}
