// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvatarModel _$AvatarModelFromJson(Map<String, dynamic> json) => _AvatarModel(
  id: (json['id'] as num).toInt(),
  age: (json['age'] as num?)?.toInt(),
  name: json['name'] as String?,
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
  pose: $enumDecodeNullable(_$PosesEnumMap, json['pose']),
  imageUrl: json['image_url'] as String?,
  imageMock: json['image_mock'] as String?,
);

Map<String, dynamic> _$AvatarModelToJson(_AvatarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'pose': _$PosesEnumMap[instance.pose],
      'image_url': instance.imageUrl,
      'image_mock': instance.imageMock,
    };

const _$GenderEnumMap = {Gender.women: 'women', Gender.men: 'men'};

const _$PosesEnumMap = {
  Poses.standing: 'standing',
  Poses.sitting: 'sitting',
  Poses.selfie: 'selfie',
  Poses.carSelfie: 'carSelfie',
  Poses.walking: 'walking',
};
