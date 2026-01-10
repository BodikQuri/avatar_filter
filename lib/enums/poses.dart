import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'pose')
enum Poses {
  standing('standing'),
  sitting('sitting'),
  selfie('selfie'),
  carSelfie('carSelfie'),
  walking('walking');

  const Poses(this.pose);

  final String pose;

  String get name => switch (this) {
    Poses.standing => LocaleKeys.poses_name_standing.tr(),
    Poses.sitting => LocaleKeys.poses_name_sitting.tr(),
    Poses.selfie => LocaleKeys.poses_name_selfie.tr(),
    Poses.carSelfie => LocaleKeys.poses_name_car_selfie.tr(),
    Poses.walking => LocaleKeys.poses_name_walking.tr(),
  };
}
