import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'gen/assets.gen.dart';
import 'pages/index/index_page.dart';
import 'pages/new_post/new_post_page.dart';
import 'pages/profile/profile_page.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/sign_up/sign_up_page.dart';
import 'providers/current_user_provider.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    final currentUser = ref.watch(currentUserNotifierProvider);
    return GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
          path: '/',
          name: '/',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const IndexPage(),
            );
          },
        ),
        GoRoute(
          path: '/sign_in',
          name: 'sign_in',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const SignInPage(),
            );
          },
        ),
        GoRoute(
          path: '/new_post',
          name: 'new_post',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const NewPostPage(),
            );
          },
        ),
        GoRoute(
          path: '/post_detail/:id',
          name: 'post_detail/:id',
          pageBuilder: (context, state) {
            // ignore: unused_local_variable
            final id = state.pathParameters['id'];
            return MaterialPage(
              key: state.pageKey,
              child: const NewPostPage(),
            );
          },
        ),
        GoRoute(
          path: '/profile/:id',
          name: 'profile/:id',
          pageBuilder: (context, state) {
            // ignore: unused_local_variable
            final id = state.pathParameters['id'];
            return MaterialPage(
              key: state.pageKey,
              child: const ProfilePage(),
            );
          },
        ),
        GoRoute(
          path: '/sign_up',
          name: 'sign_up',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const SignUpPage(),
            );
          },
        ),
        GoRoute(
          path: '/license',
          name: 'license',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: LicensePage(
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
              ),
            );
          },
        ),
      ],
      redirect: (context, state) {
        if (currentUser == null) {
          if (state.uri.toString() == '/sign_in' ||
              state.uri.toString() == '/sign_up') {
            return state.uri.toString();
          }
          return '/sign_in';
        }
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
