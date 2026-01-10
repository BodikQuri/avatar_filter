import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'gender')
enum Gender {
  women('women'),
  men('men');

  const Gender(this.gender);

  final String gender;

  String get name => switch (this) {
    Gender.women => LocaleKeys.gender_name_women.tr(),
    Gender.men => LocaleKeys.gender_name_men.tr(),
  };


  String get formalName => switch (this) {
    Gender.women => LocaleKeys.gender_formal_name_women.tr(),
    Gender.men => LocaleKeys.gender_formal_name_male.tr(),
  };
}
