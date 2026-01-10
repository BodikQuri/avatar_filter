import 'package:avatar_filter/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'pose')
enum AgeRanges {
  youngAdults('youngAdults'),
  adults('adults'),
  middleAgedAdults('middleAgedAdults'),
  olderAdults('olderAdults')
  ;

  const AgeRanges(this.pose);

  final String pose;

  String get name => switch (this) {
    AgeRanges.youngAdults => LocaleKeys.age_ranges_name_young_adults.tr(),
    AgeRanges.adults => LocaleKeys.age_ranges_name_adults.tr(),
    AgeRanges.middleAgedAdults => LocaleKeys.age_ranges_name_middle_aged_adults.tr(),
    AgeRanges.olderAdults => LocaleKeys.age_ranges_name_older_adults.tr(),
  };

  String get range => switch (this) {
    AgeRanges.youngAdults => LocaleKeys.age_ranges_range_young_adults.tr(),
    AgeRanges.adults => LocaleKeys.age_ranges_range_adults.tr(),
    AgeRanges.middleAgedAdults => LocaleKeys.age_ranges_range_middle_aged_adults.tr(),
    AgeRanges.olderAdults => LocaleKeys.age_ranges_range_older_adults.tr(),
  };

  static AgeRanges getFromAge(int age) => switch (age) {
    < 25 => AgeRanges.youngAdults,
    < 40 => AgeRanges.adults,
    < 65 => AgeRanges.middleAgedAdults,
    _ => AgeRanges.olderAdults,
  };


}
