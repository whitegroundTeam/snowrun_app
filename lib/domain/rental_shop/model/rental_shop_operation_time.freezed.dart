// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop_operation_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShopOperationTime {
  StringVO get title => throw _privateConstructorUsedError;
  DateTimeVO get from => throw _privateConstructorUsedError;
  DateTimeVO get to => throw _privateConstructorUsedError;

  /// Create a copy of RentalShopOperationTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopOperationTimeCopyWith<RentalShopOperationTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopOperationTimeCopyWith<$Res> {
  factory $RentalShopOperationTimeCopyWith(RentalShopOperationTime value,
          $Res Function(RentalShopOperationTime) then) =
      _$RentalShopOperationTimeCopyWithImpl<$Res, RentalShopOperationTime>;
  @useResult
  $Res call({StringVO title, DateTimeVO from, DateTimeVO to});
}

/// @nodoc
class _$RentalShopOperationTimeCopyWithImpl<$Res,
        $Val extends RentalShopOperationTime>
    implements $RentalShopOperationTimeCopyWith<$Res> {
  _$RentalShopOperationTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopOperationTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTimeVO,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTimeVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentalShopOperationTimeImplCopyWith<$Res>
    implements $RentalShopOperationTimeCopyWith<$Res> {
  factory _$$RentalShopOperationTimeImplCopyWith(
          _$RentalShopOperationTimeImpl value,
          $Res Function(_$RentalShopOperationTimeImpl) then) =
      __$$RentalShopOperationTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO title, DateTimeVO from, DateTimeVO to});
}

/// @nodoc
class __$$RentalShopOperationTimeImplCopyWithImpl<$Res>
    extends _$RentalShopOperationTimeCopyWithImpl<$Res,
        _$RentalShopOperationTimeImpl>
    implements _$$RentalShopOperationTimeImplCopyWith<$Res> {
  __$$RentalShopOperationTimeImplCopyWithImpl(
      _$RentalShopOperationTimeImpl _value,
      $Res Function(_$RentalShopOperationTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopOperationTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? from = null,
    Object? to = null,
  }) {
    return _then(_$RentalShopOperationTimeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as DateTimeVO,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as DateTimeVO,
    ));
  }
}

/// @nodoc

class _$RentalShopOperationTimeImpl extends _RentalShopOperationTime {
  const _$RentalShopOperationTimeImpl(
      {required this.title, required this.from, required this.to})
      : super._();

  @override
  final StringVO title;
  @override
  final DateTimeVO from;
  @override
  final DateTimeVO to;

  @override
  String toString() {
    return 'RentalShopOperationTime(title: $title, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopOperationTimeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, from, to);

  /// Create a copy of RentalShopOperationTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopOperationTimeImplCopyWith<_$RentalShopOperationTimeImpl>
      get copyWith => __$$RentalShopOperationTimeImplCopyWithImpl<
          _$RentalShopOperationTimeImpl>(this, _$identity);
}

abstract class _RentalShopOperationTime extends RentalShopOperationTime {
  const factory _RentalShopOperationTime(
      {required final StringVO title,
      required final DateTimeVO from,
      required final DateTimeVO to}) = _$RentalShopOperationTimeImpl;
  const _RentalShopOperationTime._() : super._();

  @override
  StringVO get title;
  @override
  DateTimeVO get from;
  @override
  DateTimeVO get to;

  /// Create a copy of RentalShopOperationTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopOperationTimeImplCopyWith<_$RentalShopOperationTimeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
