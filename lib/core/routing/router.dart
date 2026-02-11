
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/goldView.dart';
import '../../features/home/homeView.dart';
import '../../features/home/sliverView.dart';
import '../constant/appString.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final router = GoRouter(
    initialLocation: '/',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Homeview(),
        routes: [
          GoRoute(
            path: AppString.goldView,
            builder: (context, state) => const Goldview(),
          ),
          GoRoute(
            path: AppString.SliverView,
            builder: (context, state) => sliverView(),

          ),
        ],
      ),
    ],
  );
}