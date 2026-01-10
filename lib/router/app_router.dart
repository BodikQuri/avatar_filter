import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes.dart';

final rootKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: rootKey,
  routes: $appRoutes,
  extraCodec: const ExtraCodec(),
  debugLogDiagnostics: kDebugMode,
);

class ExtraCodec extends Codec<Object?, Object?> {
  const ExtraCodec();

  @override
  Converter<Object?, Object?> get decoder => const _Decoder();

  @override
  Converter<Object?, Object?> get encoder => const _Encoder();
}

class _Decoder extends Converter<Object?, Object?> {
  const _Decoder();
  @override
  Object? convert(Object? input) => input;
}

class _Encoder extends Converter<Object?, Object?> {
  const _Encoder();
  @override
  Object? convert(Object? input) => input;
}
