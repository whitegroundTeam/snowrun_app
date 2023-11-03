// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'snow_ball_profile_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SnowBallProfileImage {
  StringVO get key => throw _privateConstructorUsedError;
  StringVO get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SnowBallProfileImageCopyWith<SnowBallProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnowBallProfileImageCopyWith<$Res> {
  factory $SnowBallProfileImageCopyWith(SnowBallProfileImage value,
          $Res Function(SnowBallProfileImage) then) =
      _$SnowBallProfileImageCopyWithImpl<$Res, SnowBallProfileImage>;
  @useResult
  $Res call({StringVO key, StringVO url});
}

/// @nodoc
class _$SnowBallProfileImageCopyWithImpl<$Res,
        $Val extends SnowBallProfileImage>
    implements $SnowBallProfileImageCopyWith<$Res> {
  _$SnowBallProfileImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as StringVO,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SnowBallProfileImageCopyWith<$Res>
    implements $SnowBallProfileImageCopyWith<$Res> {
  factory _$$_SnowBallProfileImageCopyWith(_$_SnowBallProfileImage value,
          $Res Function(_$_SnowBallProfileImage) then) =
      __$$_SnowBallProfileImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO key, StringVO url});
}

/// @nodoc
class __$$_SnowBallProfileImageCopyWithImpl<$Res>
    extends _$SnowBallProfileImageCopyWithImpl<$Res, _$_SnowBallProfileImage>
    implements _$$_SnowBallProfileImageCopyWith<$Res> {
  __$$_SnowBallProfileImageCopyWithImpl(_$_SnowBallProfileImage _value,
      $Res Function(_$_SnowBallProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? url = null,
  }) {
    return _then(_$_SnowBallProfileImage(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as StringVO,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$_SnowBallProfileImage extends _SnowBallProfileImage {
  const _$_SnowBallProfileImage({required this.key, required this.url})
      : super._();

  @override
  final StringVO key;
  @override
  final StringVO url;

  @override
  String toString() {
    return 'SnowBallProfileImage(key: $key, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SnowBallProfileImage &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, key, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SnowBallProfileImageCopyWith<_$_SnowBallProfileImage> get copyWith =>
      __$$_SnowBallProfileImageCopyWithImpl<_$_SnowBallProfileImage>(
          this, _$identity);
}

abstract class _SnowBallProfileImage extends SnowBallProfileImage {
  const factory _SnowBallProfileImage(
      {required final StringVO key,
      required final StringVO url}) = _$_SnowBallProfileImage;
  const _SnowBallProfileImage._() : super._();

  @override
  StringVO get key;
  @override
  StringVO get url;
  @override
  @JsonKey(ignore: true)
  _$$_SnowBallProfileImageCopyWith<_$_SnowBallProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}
