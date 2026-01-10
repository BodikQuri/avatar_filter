import 'dart:developer' as dev;

import 'package:flutter/foundation.dart';

mixin Logger {
  @protected
  void logger(
    Object? object, {
    Object? error,
    StackTrace? stackTrace,
  }) =>
      dev.log(
        object.toString(),
        name: runtimeType.toString(),
        error: error,
        stackTrace: stackTrace,
      );
}
