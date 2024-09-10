import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/buttons/large_button.dart';
import '../../components/text_field/password_text_field.dart';
import '../../components/text_field/single_line_text_field.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.signIn),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Assets.images.twitterLogo.svg(
                width: 48,
                height: 48,
                colorFilter: ColorFilter.mode(
                  Colors.purple[400]!,
                  BlendMode.srcIn,
                ),
              ),
              SingleLineTextField(
                hintText: L10n.of(context)!.mail,
              ),
              const SizedBox(height: 16),
              const PasswordTextField(),
              const SizedBox(height: 32),
              LargeButton(
                onPressed: () {
                  debugPrint('Sign In');
                },
                text: L10n.of(context)!.signUp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
