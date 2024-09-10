import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../l10n/l10n.dart';

class PasswordTextField extends HookConsumerWidget {
  const PasswordTextField({
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
    final isObscured = useState(true);
    final formEditingController = controller ?? useTextEditingController();
    final formFocusNode = focusNode ?? useFocusNode();
    return TextFormField(
      onTapOutside: (event) => formFocusNode.unfocus(),
      controller: formEditingController,
      focusNode: formFocusNode,
      decoration: InputDecoration(
        labelText: hintText ?? L10n.of(context)!.password,
        suffixIcon: IconButton(
          icon: Icon(
            !isObscured.value ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: () {
            isObscured.value = !isObscured.value;
          },
        ),
      ),
      obscureText: isObscured.value,
    );
  }
}
