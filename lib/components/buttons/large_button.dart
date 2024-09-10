import 'dart:async';

import 'package:flutter/material.dart';

enum _LargeButtonVariant {
  primary,
  secondary,
  disabled,
  warning,
}

class LargeButton extends StatelessWidget {
  const LargeButton({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _LargeButtonVariant.primary;

  const LargeButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _LargeButtonVariant.secondary;

  const LargeButton.disabled({
    super.key,
    required this.text,
  })  : _variant = _LargeButtonVariant.disabled,
        onPressed = null;

  const LargeButton.warning({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _LargeButtonVariant.warning;

  final _LargeButtonVariant _variant;
  final String text;
  final FutureOr<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 72),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: _getTextColor(),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    switch (_variant) {
      case _LargeButtonVariant.primary:
        return Colors.purple;
      case _LargeButtonVariant.secondary:
        return Colors.purple[100]!;
      case _LargeButtonVariant.disabled:
        return Colors.grey[300]!;
      case _LargeButtonVariant.warning:
        return Colors.orange;
    }
  }

  Color _getTextColor() {
    switch (_variant) {
      case _LargeButtonVariant.primary:
      case _LargeButtonVariant.warning:
        return Colors.white;
      case _LargeButtonVariant.secondary:
        return Colors.purple[700]!;
      case _LargeButtonVariant.disabled:
        return Colors.grey[600]!;
    }
  }
}
