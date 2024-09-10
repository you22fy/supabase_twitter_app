import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/index/index_page.dart';
import 'pages/new_post/new_post_page.dart';
import 'pages/profile/profile_page.dart';
import 'pages/sign_in/sign_in_page.dart';
import 'pages/sign_up/sign_up_page.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
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
