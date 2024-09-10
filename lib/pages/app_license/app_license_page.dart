import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';

class AppLicensePage extends StatelessWidget {
  const AppLicensePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LicensePage(
      applicationName: 'Supabase Twitter App',
      applicationVersion: '1.0.0',
      applicationIcon: Assets.images.twitterLogo.svg(
        width: 48,
        height: 48,
        colorFilter: ColorFilter.mode(
          Colors.purple[400]!,
          BlendMode.srcIn,
        ),
      ),
      applicationLegalese: 'This application is open source.',
    );
  }
}
