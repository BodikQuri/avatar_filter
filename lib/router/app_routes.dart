import 'dart:async';

import 'package:avatar_filter/views/avatars/avatars_view.dart';
import 'package:avatar_filter/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'app_routes.g.dart';

@TypedGoRoute<HomeRoute>(path: '/')
final class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeView();
  }
}

@TypedGoRoute<AvatarsFiltersRoute>(path: '/avatars-filters')
final class AvatarsFiltersRoute extends GoRouteData with $AvatarsFiltersRoute {
  const AvatarsFiltersRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AvatarsView();
  }
}
