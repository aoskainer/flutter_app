import 'package:flutter/material.dart';
import 'package:flutter_app/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

ProviderScope createWidgetTestProviderScope({
  required String initialLocation,
}) {
  final testingRouterFactory = RouterFactory(initialLocation: initialLocation);
  final testingGoRouter = testingRouterFactory.router;
  return ProviderScope(
    child: MaterialApp.router(
      routerDelegate: testingGoRouter.routerDelegate,
      routeInformationParser: testingGoRouter.routeInformationParser,
      routeInformationProvider: testingGoRouter.routeInformationProvider,
    ),
  );
}
