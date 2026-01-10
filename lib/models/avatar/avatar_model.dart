import 'dart:convert';

import 'package:avatar_filter/enums/gender.dart';
import 'package:avatar_filter/enums/poses.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'avatar_model.freezed.dart';
part 'avatar_model.g.dart';

@freezed
abstract class AvatarModel with _$AvatarModel {
  const AvatarModel._();

  const factory AvatarModel({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'gender') Gender? gender,
    @JsonKey(name: 'pose') Poses? pose,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'image_mock') String? imageMock,
  }) = _AvatarModel;

  factory AvatarModel.fromJson(Map<String, dynamic> json) => _$AvatarModelFromJson(json);

  factory AvatarModel.fromJsonString(String jsonString) => _$AvatarModelFromJson(jsonDecode(jsonString));

  String toJsonString() => jsonEncode(toJson());
}

const AvatarModel emptyAvatarModel = AvatarModel(
  id: -1,
);
