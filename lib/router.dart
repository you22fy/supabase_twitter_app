import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/sample/sample_page.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/sample',
      routes: [
        GoRoute(
          path: '/sample',
          name: 'sample',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const SamplePage(),
            );
          },
        ),
      ],
      redirect: (context, state) {
        return null;
      },
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(
              state.error.toString(),
            ),
          ),
        ),
      ),
    );
  },
);
