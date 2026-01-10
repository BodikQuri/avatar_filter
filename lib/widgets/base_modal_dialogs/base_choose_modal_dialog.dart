import 'package:avatar_filter/widgets/base_modal_dialogs/base_modal_dialog.dart';
import 'package:avatar_filter/widgets/base_widgets/checkbox_row.dart';
import 'package:flutter/material.dart';

class BaseChooseModalDialog<T> extends StatefulWidget {
  const BaseChooseModalDialog({
    super.key,
    this.selectedValue,
    required this.values,
    required this.valueToString,
    this.valueToSubtitle,
    required this.onConfirm,
    required this.title,
    required this.buttonText,
    this.onCancel,
  });

  final List<T>? selectedValue;
  final List<T> values;
  final String Function(T) valueToString;
  final String Function(T)? valueToSubtitle;
  final void Function(List<T>) onConfirm;
  final String title;
  final String buttonText;
  final VoidCallback? onCancel;

  @override
  State<BaseChooseModalDialog<T>> createState() => _BaseChooseModalDialogState<T>();
}

class _BaseChooseModalDialogState<T> extends State<BaseChooseModalDialog<T>> {
  late List<T> selectedValues = widget.selectedValue ?? [];

  @override
  Widget build(BuildContext context) {
    return BaseModalDialog(
      title: widget.title,
      onConfirm: () => widget.onConfirm(selectedValues),
      buttonText: widget.buttonText,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...widget.values. map((T value) {
            final bool isSelected = selectedValues.contains(value);
            return Padding(
              padding: EdgeInsets.only(bottom: widget.values.last == value ? 0 : 24),
              child: CheckboxRow(
                value: isSelected,
                onChanged: (bool? newValue) {
                  setState(() {
                    if (newValue == true) {
                      selectedValues.add(value);
                    } else {
                      selectedValues.remove(value);
                    }
                  });
                },
                title: widget.valueToString(value),
                subtitle: widget.valueToSubtitle?.call(value),
              ),
            );
          }),
        ],
      ),
    );
  }
}
