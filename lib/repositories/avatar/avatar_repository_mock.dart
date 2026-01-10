import 'dart:convert';

import 'package:avatar_filter/generated/assets.gen.dart';
import 'package:avatar_filter/models/avatar/avatar_model.dart';
import 'package:avatar_filter/utils/log_mixin.dart';
import 'package:flutter/services.dart';

import 'avatar_repository.dart';

class AvatarRepositoryMock extends AvatarRepository with Logger {
  @override
  Future<List<AvatarModel>> fetchAvatars() async {
    try {
      final rawData = await rootBundle.loadString(Assets.data.mockAvatars);
      final data = jsonDecode(rawData);

      final List<AvatarModel> jsonData = (data as List<dynamic>)
          .map((e) => AvatarModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return jsonData;
    } catch (e) {
      logger('Failed to fetch avatars', error: e, stackTrace: StackTrace.current);
      rethrow;
    }
  }
}
