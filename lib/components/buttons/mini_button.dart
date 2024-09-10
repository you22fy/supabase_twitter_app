import 'dart:async';

import 'package:flutter/material.dart';

enum _MiniButtonVariant {
  primary,
  secondary,
  disabled,
  warning,
  outlined,
}

class MiniButton extends StatelessWidget {
  const MiniButton({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.primary;

  const MiniButton.secondary({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.secondary;

  const MiniButton.disabled({
    super.key,
    required this.text,
  })  : _variant = _MiniButtonVariant.disabled,
        onPressed = null;

  const MiniButton.warning({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.warning;

  const MiniButton.outlined({
    super.key,
    required this.text,
    required this.onPressed,
  }) : _variant = _MiniButtonVariant.outlined;

  final _MiniButtonVariant _variant;
  final String text;
  final FutureOr<void> Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: _getBackgroundColor(),
          borderRadius: BorderRadius.circular(4),
          border: _getBorder(),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: _getTextColor(),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Color _getBackgroundColor() {
    switch (_variant) {
      case _MiniButtonVariant.primary:
        return Colors.purple;
      case _MiniButtonVariant.secondary:
        return Colors.purple[100]!;
      case _MiniButtonVariant.disabled:
        return Colors.grey[300]!;
      case _MiniButtonVariant.warning:
        return Colors.orange;
      case _MiniButtonVariant.outlined:
        return Colors.transparent;
    }
  }

  Color _getTextColor() {
    switch (_variant) {
      case _MiniButtonVariant.primary:
      case _MiniButtonVariant.warning:
        return Colors.white;
      case _MiniButtonVariant.secondary:
        return Colors.purple[700]!;
      case _MiniButtonVariant.disabled:
        return Colors.grey[600]!;
      case _MiniButtonVariant.outlined:
        return Colors.purple;
    }
  }

  Border? _getBorder() {
    if (_variant == _MiniButtonVariant.outlined) {
      return Border.all(color: Colors.purple, width: 1);
    }
    return null;
  }
}
