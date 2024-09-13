import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../components/buttons/mini_button.dart';
import '../../../components/text_field/multi_line_text_field.dart';
import '../../../l10n/l10n.dart';

class TweetModal extends HookConsumerWidget {
  const TweetModal({
    required this.onPosted,
    super.key,
  });

  final Future<void> Function(String content) onPosted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final focusNode = useFocusNode();
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 40),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: MiniButton(
                text: L10n.of(context)!.postTweet,
                onPressed: () async {
                  await onPosted(controller.text);
                  if (!context.mounted) {
                    return;
                  }
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: MultiLineTextField(
              hintText: L10n.of(context)!.tweetHintText,
              focusNode: focusNode,
              controller: controller,
              autoFocus: true,
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          ),
        ],
      ),
    );
  }
}
