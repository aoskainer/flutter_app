import 'package:flutter/material.dart';
import 'package:flutter_app/view/counter_page.dart';
import 'package:flutter_app/view/list_page.dart';
import 'package:flutter_app/view/login_page.dart';
import 'package:flutter_app/view/pokemon_page.dart';
import 'package:flutter_app/view/top_page.dart';
import 'package:go_router/go_router.dart';

final goRouter = RouterFactory().router;

/// WidgetTestでテストする時にiniatialLocationを指定できた方が利便性が高いので、
/// FactoryクラスのコンストラクタでGoRouterを作成する方法を採用しています。
class RouterFactory {
  late GoRouter _router;

  GoRouter get router => _router;

  RouterFactory({String? initialLocation}) {
    _router = GoRouter(
      initialLocation: initialLocation ?? '/login',
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
          path: '/top',
          name: 'top',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const TopPage(),
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
        GoRoute(
          path: '/pokemon',
          name: 'pokemon',
          pageBuilder: (context, state) {
            return MaterialPage(
              key: state.pageKey,
              child: const PokemonPage(),
            );
          },
        ),
      ],
      errorPageBuilder: (context, state) => MaterialPage(
        key: state.pageKey,
        child: Scaffold(
          body: Center(
            child: Text(state.error.toString()),
          ),
        ),
      ),
    );
  }
}
