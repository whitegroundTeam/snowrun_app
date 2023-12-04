// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppInfo {
  AppVersion get appVersion => throw _privateConstructorUsedError;
  AppNotice get appNotice => throw _privateConstructorUsedError;
  ListVO<AppOperationInfo> get appOperationInfos =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppInfoCopyWith<AppInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppInfoCopyWith<$Res> {
  factory $AppInfoCopyWith(AppInfo value, $Res Function(AppInfo) then) =
      _$AppInfoCopyWithImpl<$Res, AppInfo>;
  @useResult
  $Res call(
      {AppVersion appVersion,
      AppNotice appNotice,
      ListVO<AppOperationInfo> appOperationInfos});

  $AppVersionCopyWith<$Res> get appVersion;
  $AppNoticeCopyWith<$Res> get appNotice;
}

/// @nodoc
class _$AppInfoCopyWithImpl<$Res, $Val extends AppInfo>
    implements $AppInfoCopyWith<$Res> {
  _$AppInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? appNotice = null,
    Object? appOperationInfos = null,
  }) {
    return _then(_value.copyWith(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      appNotice: null == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNotice,
      appOperationInfos: null == appOperationInfos
          ? _value.appOperationInfos
          : appOperationInfos // ignore: cast_nullable_to_non_nullable
              as ListVO<AppOperationInfo>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppVersionCopyWith<$Res> get appVersion {
    return $AppVersionCopyWith<$Res>(_value.appVersion, (value) {
      return _then(_value.copyWith(appVersion: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeCopyWith<$Res> get appNotice {
    return $AppNoticeCopyWith<$Res>(_value.appNotice, (value) {
      return _then(_value.copyWith(appNotice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppInfoImplCopyWith<$Res> implements $AppInfoCopyWith<$Res> {
  factory _$$AppInfoImplCopyWith(
          _$AppInfoImpl value, $Res Function(_$AppInfoImpl) then) =
      __$$AppInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppVersion appVersion,
      AppNotice appNotice,
      ListVO<AppOperationInfo> appOperationInfos});

  @override
  $AppVersionCopyWith<$Res> get appVersion;
  @override
  $AppNoticeCopyWith<$Res> get appNotice;
}

/// @nodoc
class __$$AppInfoImplCopyWithImpl<$Res>
    extends _$AppInfoCopyWithImpl<$Res, _$AppInfoImpl>
    implements _$$AppInfoImplCopyWith<$Res> {
  __$$AppInfoImplCopyWithImpl(
      _$AppInfoImpl _value, $Res Function(_$AppInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appVersion = null,
    Object? appNotice = null,
    Object? appOperationInfos = null,
  }) {
    return _then(_$AppInfoImpl(
      appVersion: null == appVersion
          ? _value.appVersion
          : appVersion // ignore: cast_nullable_to_non_nullable
              as AppVersion,
      appNotice: null == appNotice
          ? _value.appNotice
          : appNotice // ignore: cast_nullable_to_non_nullable
              as AppNotice,
      appOperationInfos: null == appOperationInfos
          ? _value.appOperationInfos
          : appOperationInfos // ignore: cast_nullable_to_non_nullable
              as ListVO<AppOperationInfo>,
    ));
  }
}

/// @nodoc

class _$AppInfoImpl extends _AppInfo {
  const _$AppInfoImpl(
      {required this.appVersion,
      required this.appNotice,
      required this.appOperationInfos})
      : super._();

  @override
  final AppVersion appVersion;
  @override
  final AppNotice appNotice;
  @override
  final ListVO<AppOperationInfo> appOperationInfos;

  @override
  String toString() {
    return 'AppInfo(appVersion: $appVersion, appNotice: $appNotice, appOperationInfos: $appOperationInfos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppInfoImpl &&
            (identical(other.appVersion, appVersion) ||
                other.appVersion == appVersion) &&
            (identical(other.appNotice, appNotice) ||
                other.appNotice == appNotice) &&
            (identical(other.appOperationInfos, appOperationInfos) ||
                other.appOperationInfos == appOperationInfos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, appVersion, appNotice, appOperationInfos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      __$$AppInfoImplCopyWithImpl<_$AppInfoImpl>(this, _$identity);
}

abstract class _AppInfo extends AppInfo {
  const factory _AppInfo(
          {required final AppVersion appVersion,
          required final AppNotice appNotice,
          required final ListVO<AppOperationInfo> appOperationInfos}) =
      _$AppInfoImpl;
  const _AppInfo._() : super._();

  @override
  AppVersion get appVersion;
  @override
  AppNotice get appNotice;
  @override
  ListVO<AppOperationInfo> get appOperationInfos;
  @override
  @JsonKey(ignore: true)
  _$$AppInfoImplCopyWith<_$AppInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
