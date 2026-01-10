import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/theme/app_colors.dart';
import 'package:avatar_filter/widgets/base_widgets/icon_button.dart';
import 'package:avatar_filter/widgets/base_widgets/primary_button.dart';
import 'package:flutter/material.dart';

class BaseModalDialog extends StatelessWidget {
  const BaseModalDialog({
    super.key,
    required this.title,
    required this.content,
    required this.buttonText,
    this.onConfirm,
  });

  final String title;
  final Widget content;
  final String buttonText;
  final VoidCallback? onConfirm;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        decoration: BoxDecoration(
          color: Theme.of(context).extension<AppColors>()!.whiteMain,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(
                      context,
                    ).textTheme.headlineMedium?.copyWith(color: Theme.of(context).extension<AppColors>()!.black),
                  ),
                ),
                BaseIconButton(
                  icon: Assets.icons.close,
                  onTap: () => Navigator.of(context).pop(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 24, bottom: 32),
              child: content,
            ),
            PrimaryButton(text: buttonText, onTap: onConfirm),
          ],
        ),
      ),
    );
  }
}
