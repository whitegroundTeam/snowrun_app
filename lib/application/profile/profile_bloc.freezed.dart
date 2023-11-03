// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profileImageType) updateProfileImage,
    required TResult Function() getSnowBallProfileImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profileImageType)? updateProfileImage,
    TResult? Function()? getSnowBallProfileImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profileImageType)? updateProfileImage,
    TResult Function()? getSnowBallProfileImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_GetSnowBallProfileImages value)
        getSnowBallProfileImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_GetSnowBallProfileImages value)?
        getSnowBallProfileImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_GetSnowBallProfileImages value)? getSnowBallProfileImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateProfileImageCopyWith<$Res> {
  factory _$$_UpdateProfileImageCopyWith(_$_UpdateProfileImage value,
          $Res Function(_$_UpdateProfileImage) then) =
      __$$_UpdateProfileImageCopyWithImpl<$Res>;
  @useResult
  $Res call({String profileImageType});
}

/// @nodoc
class __$$_UpdateProfileImageCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_UpdateProfileImage>
    implements _$$_UpdateProfileImageCopyWith<$Res> {
  __$$_UpdateProfileImageCopyWithImpl(
      _$_UpdateProfileImage _value, $Res Function(_$_UpdateProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImageType = null,
  }) {
    return _then(_$_UpdateProfileImage(
      null == profileImageType
          ? _value.profileImageType
          : profileImageType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateProfileImage implements _UpdateProfileImage {
  const _$_UpdateProfileImage(this.profileImageType);

  @override
  final String profileImageType;

  @override
  String toString() {
    return 'ProfileEvent.updateProfileImage(profileImageType: $profileImageType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfileImage &&
            (identical(other.profileImageType, profileImageType) ||
                other.profileImageType == profileImageType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileImageType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileImageCopyWith<_$_UpdateProfileImage> get copyWith =>
      __$$_UpdateProfileImageCopyWithImpl<_$_UpdateProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profileImageType) updateProfileImage,
    required TResult Function() getSnowBallProfileImages,
  }) {
    return updateProfileImage(profileImageType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profileImageType)? updateProfileImage,
    TResult? Function()? getSnowBallProfileImages,
  }) {
    return updateProfileImage?.call(profileImageType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profileImageType)? updateProfileImage,
    TResult Function()? getSnowBallProfileImages,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(profileImageType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_GetSnowBallProfileImages value)
        getSnowBallProfileImages,
  }) {
    return updateProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_GetSnowBallProfileImages value)?
        getSnowBallProfileImages,
  }) {
    return updateProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_GetSnowBallProfileImages value)? getSnowBallProfileImages,
    required TResult orElse(),
  }) {
    if (updateProfileImage != null) {
      return updateProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfileImage implements ProfileEvent {
  const factory _UpdateProfileImage(final String profileImageType) =
      _$_UpdateProfileImage;

  String get profileImageType;
  @JsonKey(ignore: true)
  _$$_UpdateProfileImageCopyWith<_$_UpdateProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetSnowBallProfileImagesCopyWith<$Res> {
  factory _$$_GetSnowBallProfileImagesCopyWith(
          _$_GetSnowBallProfileImages value,
          $Res Function(_$_GetSnowBallProfileImages) then) =
      __$$_GetSnowBallProfileImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSnowBallProfileImagesCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$_GetSnowBallProfileImages>
    implements _$$_GetSnowBallProfileImagesCopyWith<$Res> {
  __$$_GetSnowBallProfileImagesCopyWithImpl(_$_GetSnowBallProfileImages _value,
      $Res Function(_$_GetSnowBallProfileImages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSnowBallProfileImages implements _GetSnowBallProfileImages {
  const _$_GetSnowBallProfileImages();

  @override
  String toString() {
    return 'ProfileEvent.getSnowBallProfileImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetSnowBallProfileImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String profileImageType) updateProfileImage,
    required TResult Function() getSnowBallProfileImages,
  }) {
    return getSnowBallProfileImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String profileImageType)? updateProfileImage,
    TResult? Function()? getSnowBallProfileImages,
  }) {
    return getSnowBallProfileImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String profileImageType)? updateProfileImage,
    TResult Function()? getSnowBallProfileImages,
    required TResult orElse(),
  }) {
    if (getSnowBallProfileImages != null) {
      return getSnowBallProfileImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateProfileImage value) updateProfileImage,
    required TResult Function(_GetSnowBallProfileImages value)
        getSnowBallProfileImages,
  }) {
    return getSnowBallProfileImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateProfileImage value)? updateProfileImage,
    TResult? Function(_GetSnowBallProfileImages value)?
        getSnowBallProfileImages,
  }) {
    return getSnowBallProfileImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateProfileImage value)? updateProfileImage,
    TResult Function(_GetSnowBallProfileImages value)? getSnowBallProfileImages,
    required TResult orElse(),
  }) {
    if (getSnowBallProfileImages != null) {
      return getSnowBallProfileImages(this);
    }
    return orElse();
  }
}

abstract class _GetSnowBallProfileImages implements ProfileEvent {
  const factory _GetSnowBallProfileImages() = _$_GetSnowBallProfileImages;
}

/// @nodoc
mixin _$ProfileState {
  UserStatus get status => throw _privateConstructorUsedError;
  List<SnowBallProfileImage>? get snowBallProfileImages =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {UserStatus status, List<SnowBallProfileImage>? snowBallProfileImages});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snowBallProfileImages = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      snowBallProfileImages: freezed == snowBallProfileImages
          ? _value.snowBallProfileImages
          : snowBallProfileImages // ignore: cast_nullable_to_non_nullable
              as List<SnowBallProfileImage>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserStatus status, List<SnowBallProfileImage>? snowBallProfileImages});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? snowBallProfileImages = freezed,
  }) {
    return _then(_$_ProfileState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      snowBallProfileImages: freezed == snowBallProfileImages
          ? _value._snowBallProfileImages
          : snowBallProfileImages // ignore: cast_nullable_to_non_nullable
              as List<SnowBallProfileImage>?,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.status,
      required final List<SnowBallProfileImage>? snowBallProfileImages})
      : _snowBallProfileImages = snowBallProfileImages;

  @override
  final UserStatus status;
  final List<SnowBallProfileImage>? _snowBallProfileImages;
  @override
  List<SnowBallProfileImage>? get snowBallProfileImages {
    final value = _snowBallProfileImages;
    if (value == null) return null;
    if (_snowBallProfileImages is EqualUnmodifiableListView)
      return _snowBallProfileImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileState(status: $status, snowBallProfileImages: $snowBallProfileImages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._snowBallProfileImages, _snowBallProfileImages));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_snowBallProfileImages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
          {required final UserStatus status,
          required final List<SnowBallProfileImage>? snowBallProfileImages}) =
      _$_ProfileState;

  @override
  UserStatus get status;
  @override
  List<SnowBallProfileImage>? get snowBallProfileImages;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
