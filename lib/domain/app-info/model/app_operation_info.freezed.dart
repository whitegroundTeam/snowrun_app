// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_operation_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppOperationInfo {
  StringVO get title => throw _privateConstructorUsedError;
  ColorVO get titleColor => throw _privateConstructorUsedError;
  ColorVO get arrowColor => throw _privateConstructorUsedError;
  BooleanVO get applyAnimation => throw _privateConstructorUsedError;
  StringVO get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppOperationInfoCopyWith<AppOperationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppOperationInfoCopyWith<$Res> {
  factory $AppOperationInfoCopyWith(
          AppOperationInfo value, $Res Function(AppOperationInfo) then) =
      _$AppOperationInfoCopyWithImpl<$Res, AppOperationInfo>;
  @useResult
  $Res call(
      {StringVO title,
      ColorVO titleColor,
      ColorVO arrowColor,
      BooleanVO applyAnimation,
      StringVO link});
}

/// @nodoc
class _$AppOperationInfoCopyWithImpl<$Res, $Val extends AppOperationInfo>
    implements $AppOperationInfoCopyWith<$Res> {
  _$AppOperationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? titleColor = null,
    Object? arrowColor = null,
    Object? applyAnimation = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as ColorVO,
      arrowColor: null == arrowColor
          ? _value.arrowColor
          : arrowColor // ignore: cast_nullable_to_non_nullable
              as ColorVO,
      applyAnimation: null == applyAnimation
          ? _value.applyAnimation
          : applyAnimation // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppOperationInfoImplCopyWith<$Res>
    implements $AppOperationInfoCopyWith<$Res> {
  factory _$$AppOperationInfoImplCopyWith(_$AppOperationInfoImpl value,
          $Res Function(_$AppOperationInfoImpl) then) =
      __$$AppOperationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringVO title,
      ColorVO titleColor,
      ColorVO arrowColor,
      BooleanVO applyAnimation,
      StringVO link});
}

/// @nodoc
class __$$AppOperationInfoImplCopyWithImpl<$Res>
    extends _$AppOperationInfoCopyWithImpl<$Res, _$AppOperationInfoImpl>
    implements _$$AppOperationInfoImplCopyWith<$Res> {
  __$$AppOperationInfoImplCopyWithImpl(_$AppOperationInfoImpl _value,
      $Res Function(_$AppOperationInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? titleColor = null,
    Object? arrowColor = null,
    Object? applyAnimation = null,
    Object? link = null,
  }) {
    return _then(_$AppOperationInfoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      titleColor: null == titleColor
          ? _value.titleColor
          : titleColor // ignore: cast_nullable_to_non_nullable
              as ColorVO,
      arrowColor: null == arrowColor
          ? _value.arrowColor
          : arrowColor // ignore: cast_nullable_to_non_nullable
              as ColorVO,
      applyAnimation: null == applyAnimation
          ? _value.applyAnimation
          : applyAnimation // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$AppOperationInfoImpl extends _AppOperationInfo {
  const _$AppOperationInfoImpl(
      {required this.title,
      required this.titleColor,
      required this.arrowColor,
      required this.applyAnimation,
      required this.link})
      : super._();

  @override
  final StringVO title;
  @override
  final ColorVO titleColor;
  @override
  final ColorVO arrowColor;
  @override
  final BooleanVO applyAnimation;
  @override
  final StringVO link;

  @override
  String toString() {
    return 'AppOperationInfo(title: $title, titleColor: $titleColor, arrowColor: $arrowColor, applyAnimation: $applyAnimation, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppOperationInfoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.titleColor, titleColor) ||
                other.titleColor == titleColor) &&
            (identical(other.arrowColor, arrowColor) ||
                other.arrowColor == arrowColor) &&
            (identical(other.applyAnimation, applyAnimation) ||
                other.applyAnimation == applyAnimation) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, titleColor, arrowColor, applyAnimation, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppOperationInfoImplCopyWith<_$AppOperationInfoImpl> get copyWith =>
      __$$AppOperationInfoImplCopyWithImpl<_$AppOperationInfoImpl>(
          this, _$identity);
}

abstract class _AppOperationInfo extends AppOperationInfo {
  const factory _AppOperationInfo(
      {required final StringVO title,
      required final ColorVO titleColor,
      required final ColorVO arrowColor,
      required final BooleanVO applyAnimation,
      required final StringVO link}) = _$AppOperationInfoImpl;
  const _AppOperationInfo._() : super._();

  @override
  StringVO get title;
  @override
  ColorVO get titleColor;
  @override
  ColorVO get arrowColor;
  @override
  BooleanVO get applyAnimation;
  @override
  StringVO get link;
  @override
  @JsonKey(ignore: true)
  _$$AppOperationInfoImplCopyWith<_$AppOperationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
