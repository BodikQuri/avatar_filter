import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/models/avatar/avatar_model.dart';
import 'package:avatar_filter/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatefulWidget {
  const AvatarWidget({
    super.key,
    required this.avatar,
    this.width = 112,
    this.height = 152,
    this.onTap,
    this.isSelected = false,
  });

  const AvatarWidget.empty({
    super.key,
    this.width = 112,
    this.height = 152,
    this.onTap,
    this.isSelected = false,
  }) : avatar = emptyAvatarModel;

  final AvatarModel avatar;
  final double width;
  final double height;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  State<AvatarWidget> createState() => _AvatarWidgetState();
}

class _AvatarWidgetState extends State<AvatarWidget> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppColors appColors = Theme.of(context).extension<AppColors>()!;

    final borderColor = widget.isSelected ? Colors.blue : appColors.black.withValues(alpha: 0.05);
    final borderRadius = BorderRadius.circular(8);

    return Material(
      borderRadius: borderRadius,
      color: Colors.transparent,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: widget.onTap,
        child: Ink(
          width: widget.width,
          height: widget.height,
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: borderRadius,
            gradient: appColors.avatarGradient,
            image: widget.avatar.imageUrl != null
                ? DecorationImage(
                    image: NetworkImage(widget.avatar.imageUrl!),
                    fit: BoxFit.cover,
                  )
                : widget.avatar.imageMock != null
                ? DecorationImage(
                    image: AssetImage('assets/avatar_mock/${widget.avatar.imageMock!}'),
                    fit: BoxFit.cover,
                  )
                : DecorationImage(
                    image: AssetImage(Assets.images.emptyIcon.path),
                    fit: BoxFit.cover,
                  ),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                widget.avatar.name ?? '',
                style: textTheme.bodyMedium?.copyWith(
                  color: appColors.whiteMain,
                ),
              ),
              Row(
                children: [
                  if (widget.avatar.gender != null)
                    Text(
                      widget.avatar.gender!.formalName,
                      style: textTheme.labelSmall?.copyWith(
                        color: appColors.whiteMain,
                      ),
                    ),
                  if (widget.avatar.gender != null && widget.avatar.age != null)
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: 1,
                      height: 1,
                      decoration: BoxDecoration(color: appColors.whiteMain, shape: BoxShape.circle),
                    ),
                  if (widget.avatar.age != null)
                    Text(
                      widget.avatar.age.toString(),
                      style: textTheme.labelSmall?.copyWith(
                        color: appColors.whiteMain,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
