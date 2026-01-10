import 'package:avatar_filter/theme/app_colors.dart';
import 'package:flutter/material.dart';

import 'checkbox.dart';

class CheckboxRow extends StatefulWidget {
  const CheckboxRow({super.key, required this.value, this.onChanged, required this.title, this.subtitle});

  final bool value;
  final ValueChanged<bool>? onChanged;
  final String title;
  final String? subtitle;

  @override
  State<CheckboxRow> createState() => _CheckboxRowState();
}

class _CheckboxRowState extends State<CheckboxRow> {
  late bool _isChecked = widget.value;

  @override
  void didUpdateWidget(covariant CheckboxRow oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _isChecked = widget.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final AppColors appColors = Theme.of(context).extension<AppColors>()!;

    final BorderRadius borderRadius = BorderRadius.circular(5);

    return Material(
      color: Colors.transparent,
      borderRadius: borderRadius,
      child: InkWell(
        borderRadius: borderRadius,
        onTap: () {
          setState(() {
            _isChecked = !_isChecked;
          });
          widget.onChanged?.call(_isChecked);
        },
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: textTheme.bodyMedium?.copyWith(
                      color: appColors.black,
                    ),
                  ),
                  if (widget.subtitle != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        widget.subtitle!,
                        style: textTheme.labelMedium?.copyWith(
                          color: appColors.black,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            BaseCheckbox(
              value: _isChecked,
            ),
          ],
        ),
      ),
    );
  }
}
