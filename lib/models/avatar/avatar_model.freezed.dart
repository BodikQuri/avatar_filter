// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvatarModel {

@JsonKey(name: 'id') int get id;@JsonKey(name: 'age') int? get age;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'gender') Gender? get gender;@JsonKey(name: 'pose') Poses? get pose;@JsonKey(name: 'image_url') String? get imageUrl;@JsonKey(name: 'image_mock') String? get imageMock;
/// Create a copy of AvatarModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarModelCopyWith<AvatarModel> get copyWith => _$AvatarModelCopyWithImpl<AvatarModel>(this as AvatarModel, _$identity);

  /// Serializes this AvatarModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarModel&&(identical(other.id, id) || other.id == id)&&(identical(other.age, age) || other.age == age)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.pose, pose) || other.pose == pose)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageMock, imageMock) || other.imageMock == imageMock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,age,name,gender,pose,imageUrl,imageMock);

@override
String toString() {
  return 'AvatarModel(id: $id, age: $age, name: $name, gender: $gender, pose: $pose, imageUrl: $imageUrl, imageMock: $imageMock)';
}


}

/// @nodoc
abstract mixin class $AvatarModelCopyWith<$Res>  {
  factory $AvatarModelCopyWith(AvatarModel value, $Res Function(AvatarModel) _then) = _$AvatarModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'age') int? age,@JsonKey(name: 'name') String? name,@JsonKey(name: 'gender') Gender? gender,@JsonKey(name: 'pose') Poses? pose,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'image_mock') String? imageMock
});




}
/// @nodoc
class _$AvatarModelCopyWithImpl<$Res>
    implements $AvatarModelCopyWith<$Res> {
  _$AvatarModelCopyWithImpl(this._self, this._then);

  final AvatarModel _self;
  final $Res Function(AvatarModel) _then;

/// Create a copy of AvatarModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? age = freezed,Object? name = freezed,Object? gender = freezed,Object? pose = freezed,Object? imageUrl = freezed,Object? imageMock = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,pose: freezed == pose ? _self.pose : pose // ignore: cast_nullable_to_non_nullable
as Poses?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageMock: freezed == imageMock ? _self.imageMock : imageMock // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AvatarModel].
extension AvatarModelPatterns on AvatarModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvatarModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvatarModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvatarModel value)  $default,){
final _that = this;
switch (_that) {
case _AvatarModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvatarModel value)?  $default,){
final _that = this;
switch (_that) {
case _AvatarModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'gender')  Gender? gender, @JsonKey(name: 'pose')  Poses? pose, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'image_mock')  String? imageMock)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvatarModel() when $default != null:
return $default(_that.id,_that.age,_that.name,_that.gender,_that.pose,_that.imageUrl,_that.imageMock);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'gender')  Gender? gender, @JsonKey(name: 'pose')  Poses? pose, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'image_mock')  String? imageMock)  $default,) {final _that = this;
switch (_that) {
case _AvatarModel():
return $default(_that.id,_that.age,_that.name,_that.gender,_that.pose,_that.imageUrl,_that.imageMock);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int id, @JsonKey(name: 'age')  int? age, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'gender')  Gender? gender, @JsonKey(name: 'pose')  Poses? pose, @JsonKey(name: 'image_url')  String? imageUrl, @JsonKey(name: 'image_mock')  String? imageMock)?  $default,) {final _that = this;
switch (_that) {
case _AvatarModel() when $default != null:
return $default(_that.id,_that.age,_that.name,_that.gender,_that.pose,_that.imageUrl,_that.imageMock);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AvatarModel extends AvatarModel {
  const _AvatarModel({@JsonKey(name: 'id') required this.id, @JsonKey(name: 'age') this.age, @JsonKey(name: 'name') this.name, @JsonKey(name: 'gender') this.gender, @JsonKey(name: 'pose') this.pose, @JsonKey(name: 'image_url') this.imageUrl, @JsonKey(name: 'image_mock') this.imageMock}): super._();
  factory _AvatarModel.fromJson(Map<String, dynamic> json) => _$AvatarModelFromJson(json);

@override@JsonKey(name: 'id') final  int id;
@override@JsonKey(name: 'age') final  int? age;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'gender') final  Gender? gender;
@override@JsonKey(name: 'pose') final  Poses? pose;
@override@JsonKey(name: 'image_url') final  String? imageUrl;
@override@JsonKey(name: 'image_mock') final  String? imageMock;

/// Create a copy of AvatarModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarModelCopyWith<_AvatarModel> get copyWith => __$AvatarModelCopyWithImpl<_AvatarModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvatarModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarModel&&(identical(other.id, id) || other.id == id)&&(identical(other.age, age) || other.age == age)&&(identical(other.name, name) || other.name == name)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.pose, pose) || other.pose == pose)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.imageMock, imageMock) || other.imageMock == imageMock));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,age,name,gender,pose,imageUrl,imageMock);

@override
String toString() {
  return 'AvatarModel(id: $id, age: $age, name: $name, gender: $gender, pose: $pose, imageUrl: $imageUrl, imageMock: $imageMock)';
}


}

/// @nodoc
abstract mixin class _$AvatarModelCopyWith<$Res> implements $AvatarModelCopyWith<$Res> {
  factory _$AvatarModelCopyWith(_AvatarModel value, $Res Function(_AvatarModel) _then) = __$AvatarModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int id,@JsonKey(name: 'age') int? age,@JsonKey(name: 'name') String? name,@JsonKey(name: 'gender') Gender? gender,@JsonKey(name: 'pose') Poses? pose,@JsonKey(name: 'image_url') String? imageUrl,@JsonKey(name: 'image_mock') String? imageMock
});




}
/// @nodoc
class __$AvatarModelCopyWithImpl<$Res>
    implements _$AvatarModelCopyWith<$Res> {
  __$AvatarModelCopyWithImpl(this._self, this._then);

  final _AvatarModel _self;
  final $Res Function(_AvatarModel) _then;

/// Create a copy of AvatarModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? age = freezed,Object? name = freezed,Object? gender = freezed,Object? pose = freezed,Object? imageUrl = freezed,Object? imageMock = freezed,}) {
  return _then(_AvatarModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,age: freezed == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,gender: freezed == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as Gender?,pose: freezed == pose ? _self.pose : pose // ignore: cast_nullable_to_non_nullable
as Poses?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,imageMock: freezed == imageMock ? _self.imageMock : imageMock // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
