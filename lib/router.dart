import 'package:flutter/material.dart';
import 'package:flutter_app/view/counter_page.dart';
import 'package:flutter_app/view/list_page.dart';
import 'package:flutter_app/view/login_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: '/login',
      name: 'login',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const LoginPage(),
        );
      },
    ),
    GoRoute(
      path: '/counter',
      name: 'counter',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const CounterPage(),
        );
      },
    ),
    GoRoute(
      path: '/list',
      name: 'list',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: const ListPage(),
        );
      },
    ),
  ],
  // 遷移ページがないなどのエラーが発生した時に、このページに行く
  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
