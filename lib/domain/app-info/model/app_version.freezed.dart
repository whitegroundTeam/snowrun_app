// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppVersion {
  VersionVO get min => throw _privateConstructorUsedError;
  VersionVO get latest => throw _privateConstructorUsedError;
  StringVO get url => throw _privateConstructorUsedError;
  VersionVO? get current => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppVersionCopyWith<AppVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppVersionCopyWith<$Res> {
  factory $AppVersionCopyWith(
          AppVersion value, $Res Function(AppVersion) then) =
      _$AppVersionCopyWithImpl<$Res, AppVersion>;
  @useResult
  $Res call(
      {VersionVO min, VersionVO latest, StringVO url, VersionVO? current});
}

/// @nodoc
class _$AppVersionCopyWithImpl<$Res, $Val extends AppVersion>
    implements $AppVersionCopyWith<$Res> {
  _$AppVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? latest = null,
    Object? url = null,
    Object? current = freezed,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as VersionVO,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as VersionVO,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as StringVO,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as VersionVO?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppVersionImplCopyWith<$Res>
    implements $AppVersionCopyWith<$Res> {
  factory _$$AppVersionImplCopyWith(
          _$AppVersionImpl value, $Res Function(_$AppVersionImpl) then) =
      __$$AppVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VersionVO min, VersionVO latest, StringVO url, VersionVO? current});
}

/// @nodoc
class __$$AppVersionImplCopyWithImpl<$Res>
    extends _$AppVersionCopyWithImpl<$Res, _$AppVersionImpl>
    implements _$$AppVersionImplCopyWith<$Res> {
  __$$AppVersionImplCopyWithImpl(
      _$AppVersionImpl _value, $Res Function(_$AppVersionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? latest = null,
    Object? url = null,
    Object? current = freezed,
  }) {
    return _then(_$AppVersionImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as VersionVO,
      latest: null == latest
          ? _value.latest
          : latest // ignore: cast_nullable_to_non_nullable
              as VersionVO,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as StringVO,
      current: freezed == current
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as VersionVO?,
    ));
  }
}

/// @nodoc

class _$AppVersionImpl extends _AppVersion {
  const _$AppVersionImpl(
      {required this.min,
      required this.latest,
      required this.url,
      this.current})
      : super._();

  @override
  final VersionVO min;
  @override
  final VersionVO latest;
  @override
  final StringVO url;
  @override
  final VersionVO? current;

  @override
  String toString() {
    return 'AppVersion(min: $min, latest: $latest, url: $url, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppVersionImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.latest, latest) || other.latest == latest) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.current, current) || other.current == current));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, latest, url, current);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppVersionImplCopyWith<_$AppVersionImpl> get copyWith =>
      __$$AppVersionImplCopyWithImpl<_$AppVersionImpl>(this, _$identity);
}

abstract class _AppVersion extends AppVersion {
  const factory _AppVersion(
      {required final VersionVO min,
      required final VersionVO latest,
      required final StringVO url,
      final VersionVO? current}) = _$AppVersionImpl;
  const _AppVersion._() : super._();

  @override
  VersionVO get min;
  @override
  VersionVO get latest;
  @override
  StringVO get url;
  @override
  VersionVO? get current;
  @override
  @JsonKey(ignore: true)
  _$$AppVersionImplCopyWith<_$AppVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
