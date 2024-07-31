import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:site_dev/view/elevator_app.dart';
import 'view/page_home.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  // Rota dafault
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) => const PageHome(),
  ),
  // Elevator App
  GoRoute(
      path: '/elevator-app',
      builder: (BuildContext context, GoRouterState state) => ElevatorApp())
]);
