import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SingleLineTextField extends HookConsumerWidget {
  const SingleLineTextField({
    this.controller,
    this.focusNode,
    this.hintText,
    super.key,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formEditingController = controller ?? useTextEditingController();
    final formFocusNode = focusNode ?? useFocusNode();
    return TextFormField(
      onTapOutside: (event) => formFocusNode.unfocus(),
      controller: formEditingController,
      focusNode: formFocusNode,
      decoration: InputDecoration(
        labelText: hintText,
      ),
    );
  }
}
