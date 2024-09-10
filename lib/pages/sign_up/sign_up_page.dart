import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../components/buttons/large_button.dart';
import '../../components/text_field/password_text_field.dart';
import '../../components/text_field/single_line_text_field.dart';
import '../../gen/assets.gen.dart';
import '../../l10n/l10n.dart';
import '../../repositories/user_repository.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmPasswordController = useTextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.signUp),
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
                controller: emailController,
              ),
              const SizedBox(height: 16),
              PasswordTextField(
                controller: passwordController,
              ),
              const SizedBox(height: 16),
              PasswordTextField(
                hintText: L10n.of(context)!.confirmPassword,
                controller: confirmPasswordController,
              ),
              const SizedBox(height: 32),
              LargeButton(
                onPressed: () async {
                  if (passwordController.text !=
                      confirmPasswordController.text) {
                    return;
                  }
                  await UserRepository().signUp(
                    email: emailController.text,
                    password: passwordController.text,
                  );
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
