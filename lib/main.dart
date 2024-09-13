import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'env/env.dart';
import 'l10n/l10n.dart';
import 'providers/locale_provider.dart';
import 'providers/theme_mode_provider.dart';
import 'router.dart';
import 'utils/shared_preference_instance.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // supabaseの初期化
  await Supabase.initialize(
    url: Env.supabaseUrl,
    anonKey: Env.supabaseKey,
  );

  // shared_preferencesの初期化
  await SharedPreferencesInstance.initialize();

  const scopeApp = ProviderScope(child: MyApp());
  runApp(scopeApp);
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final locale = ref.watch(localeNotifierProvider);
    final themeMode = ref.watch(themeModeNotifierProvider);

    return MaterialApp.router(
      title: 'Sample App',

      /// localizations
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      locale: locale,

      /// Router
      routerDelegate: router.routerDelegate,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,

      /// ThemeMode
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      themeMode: themeMode,
    );
  }
}
