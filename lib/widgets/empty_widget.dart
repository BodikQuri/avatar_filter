import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class EmptyWWidget extends StatelessWidget {
  const EmptyWWidget({super.key, this.size = 165});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Assets.images.emptyIcon.image(
      width: size,
      height: size,
    );
  }
}
