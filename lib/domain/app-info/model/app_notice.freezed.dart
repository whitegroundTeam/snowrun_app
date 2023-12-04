// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppNotice {
  StringVO get imageUrl => throw _privateConstructorUsedError;
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get description => throw _privateConstructorUsedError;
  AppNoticeButtonInfo? get negativeButton => throw _privateConstructorUsedError;
  AppNoticeButtonInfo? get positiveButton => throw _privateConstructorUsedError;
  BooleanVO get isForcedFinish => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppNoticeCopyWith<AppNotice> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppNoticeCopyWith<$Res> {
  factory $AppNoticeCopyWith(AppNotice value, $Res Function(AppNotice) then) =
      _$AppNoticeCopyWithImpl<$Res, AppNotice>;
  @useResult
  $Res call(
      {StringVO imageUrl,
      StringVO title,
      StringVO description,
      AppNoticeButtonInfo? negativeButton,
      AppNoticeButtonInfo? positiveButton,
      BooleanVO isForcedFinish});

  $AppNoticeButtonInfoCopyWith<$Res>? get negativeButton;
  $AppNoticeButtonInfoCopyWith<$Res>? get positiveButton;
}

/// @nodoc
class _$AppNoticeCopyWithImpl<$Res, $Val extends AppNotice>
    implements $AppNoticeCopyWith<$Res> {
  _$AppNoticeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? title = null,
    Object? description = null,
    Object? negativeButton = freezed,
    Object? positiveButton = freezed,
    Object? isForcedFinish = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringVO,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
      negativeButton: freezed == negativeButton
          ? _value.negativeButton
          : negativeButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfo?,
      positiveButton: freezed == positiveButton
          ? _value.positiveButton
          : positiveButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfo?,
      isForcedFinish: null == isForcedFinish
          ? _value.isForcedFinish
          : isForcedFinish // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeButtonInfoCopyWith<$Res>? get negativeButton {
    if (_value.negativeButton == null) {
      return null;
    }

    return $AppNoticeButtonInfoCopyWith<$Res>(_value.negativeButton!, (value) {
      return _then(_value.copyWith(negativeButton: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AppNoticeButtonInfoCopyWith<$Res>? get positiveButton {
    if (_value.positiveButton == null) {
      return null;
    }

    return $AppNoticeButtonInfoCopyWith<$Res>(_value.positiveButton!, (value) {
      return _then(_value.copyWith(positiveButton: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppNoticeImplCopyWith<$Res>
    implements $AppNoticeCopyWith<$Res> {
  factory _$$AppNoticeImplCopyWith(
          _$AppNoticeImpl value, $Res Function(_$AppNoticeImpl) then) =
      __$$AppNoticeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringVO imageUrl,
      StringVO title,
      StringVO description,
      AppNoticeButtonInfo? negativeButton,
      AppNoticeButtonInfo? positiveButton,
      BooleanVO isForcedFinish});

  @override
  $AppNoticeButtonInfoCopyWith<$Res>? get negativeButton;
  @override
  $AppNoticeButtonInfoCopyWith<$Res>? get positiveButton;
}

/// @nodoc
class __$$AppNoticeImplCopyWithImpl<$Res>
    extends _$AppNoticeCopyWithImpl<$Res, _$AppNoticeImpl>
    implements _$$AppNoticeImplCopyWith<$Res> {
  __$$AppNoticeImplCopyWithImpl(
      _$AppNoticeImpl _value, $Res Function(_$AppNoticeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
    Object? title = null,
    Object? description = null,
    Object? negativeButton = freezed,
    Object? positiveButton = freezed,
    Object? isForcedFinish = null,
  }) {
    return _then(_$AppNoticeImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as StringVO,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
      negativeButton: freezed == negativeButton
          ? _value.negativeButton
          : negativeButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfo?,
      positiveButton: freezed == positiveButton
          ? _value.positiveButton
          : positiveButton // ignore: cast_nullable_to_non_nullable
              as AppNoticeButtonInfo?,
      isForcedFinish: null == isForcedFinish
          ? _value.isForcedFinish
          : isForcedFinish // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
    ));
  }
}

/// @nodoc

class _$AppNoticeImpl extends _AppNotice {
  const _$AppNoticeImpl(
      {required this.imageUrl,
      required this.title,
      required this.description,
      this.negativeButton,
      this.positiveButton,
      required this.isForcedFinish})
      : super._();

  @override
  final StringVO imageUrl;
  @override
  final StringVO title;
  @override
  final StringVO description;
  @override
  final AppNoticeButtonInfo? negativeButton;
  @override
  final AppNoticeButtonInfo? positiveButton;
  @override
  final BooleanVO isForcedFinish;

  @override
  String toString() {
    return 'AppNotice(imageUrl: $imageUrl, title: $title, description: $description, negativeButton: $negativeButton, positiveButton: $positiveButton, isForcedFinish: $isForcedFinish)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppNoticeImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.negativeButton, negativeButton) ||
                other.negativeButton == negativeButton) &&
            (identical(other.positiveButton, positiveButton) ||
                other.positiveButton == positiveButton) &&
            (identical(other.isForcedFinish, isForcedFinish) ||
                other.isForcedFinish == isForcedFinish));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageUrl, title, description,
      negativeButton, positiveButton, isForcedFinish);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppNoticeImplCopyWith<_$AppNoticeImpl> get copyWith =>
      __$$AppNoticeImplCopyWithImpl<_$AppNoticeImpl>(this, _$identity);
}

abstract class _AppNotice extends AppNotice {
  const factory _AppNotice(
      {required final StringVO imageUrl,
      required final StringVO title,
      required final StringVO description,
      final AppNoticeButtonInfo? negativeButton,
      final AppNoticeButtonInfo? positiveButton,
      required final BooleanVO isForcedFinish}) = _$AppNoticeImpl;
  const _AppNotice._() : super._();

  @override
  StringVO get imageUrl;
  @override
  StringVO get title;
  @override
  StringVO get description;
  @override
  AppNoticeButtonInfo? get negativeButton;
  @override
  AppNoticeButtonInfo? get positiveButton;
  @override
  BooleanVO get isForcedFinish;
  @override
  @JsonKey(ignore: true)
  _$$AppNoticeImplCopyWith<_$AppNoticeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
