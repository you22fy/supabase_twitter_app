import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MultiLineTextField extends HookConsumerWidget {
  /// 複数行入力に対応したテキストフィールド
  const MultiLineTextField({
    this.controller,
    this.focusNode,
    this.hintText,
    this.onChanged,
    this.maxLength = 140,
    this.minLines = 3,
    this.maxLines,
    this.warningLength,
    this.autoFocus = false,
    this.backgroundColor = const Color(0xFFE0E0E0),
    this.textColor = Colors.black,
    this.hintColor = Colors.grey,
    this.counterColor = Colors.grey,
    this.warningColor = Colors.red,
    super.key,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final ValueChanged<String>? onChanged;
  final int maxLength;
  final int minLines;
  final int? maxLines;
  final int? warningLength;
  final bool autoFocus;
  final Color backgroundColor;
  final Color textColor;
  final Color hintColor;
  final Color counterColor;
  final Color warningColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formEditingController = controller ?? useTextEditingController();
    final formFocusNode = focusNode ?? useFocusNode();
    final characterCount = useState(0);
    final effectiveWarningLength = warningLength ?? (maxLength * 0.93).round();

    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextFormField(
            onTapOutside: (event) => formFocusNode.unfocus(),
            controller: formEditingController,
            focusNode: formFocusNode,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(color: hintColor),
              counterText: '',
            ),
            autofocus: autoFocus,
            maxLines: maxLines,
            minLines: minLines,
            maxLength: maxLength,
            maxLengthEnforcement: MaxLengthEnforcement.enforced,
            onChanged: (value) {
              characterCount.value = value.length;
              onChanged?.call(value);
            },
            style: TextStyle(fontSize: 16, color: textColor),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, right: 16),
            child: Text(
              '${characterCount.value}/$maxLength',
              style: TextStyle(
                color: characterCount.value > effectiveWarningLength
                    ? warningColor
                    : counterColor,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
