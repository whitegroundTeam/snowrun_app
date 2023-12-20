// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_button_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SelectButtonEvent {
  bool get isActive => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isActive) setActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isActive)? setActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isActive)? setActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetActive value) setActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetActive value)? setActive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetActive value)? setActive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SelectButtonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectButtonEventCopyWith<SelectButtonEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectButtonEventCopyWith<$Res> {
  factory $SelectButtonEventCopyWith(
          SelectButtonEvent value, $Res Function(SelectButtonEvent) then) =
      _$SelectButtonEventCopyWithImpl<$Res, SelectButtonEvent>;
  @useResult
  $Res call({bool isActive});
}

/// @nodoc
class _$SelectButtonEventCopyWithImpl<$Res, $Val extends SelectButtonEvent>
    implements $SelectButtonEventCopyWith<$Res> {
  _$SelectButtonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectButtonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetActiveImplCopyWith<$Res>
    implements $SelectButtonEventCopyWith<$Res> {
  factory _$$SetActiveImplCopyWith(
          _$SetActiveImpl value, $Res Function(_$SetActiveImpl) then) =
      __$$SetActiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isActive});
}

/// @nodoc
class __$$SetActiveImplCopyWithImpl<$Res>
    extends _$SelectButtonEventCopyWithImpl<$Res, _$SetActiveImpl>
    implements _$$SetActiveImplCopyWith<$Res> {
  __$$SetActiveImplCopyWithImpl(
      _$SetActiveImpl _value, $Res Function(_$SetActiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectButtonEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isActive = null,
  }) {
    return _then(_$SetActiveImpl(
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetActiveImpl implements _SetActive {
  const _$SetActiveImpl({required this.isActive});

  @override
  final bool isActive;

  @override
  String toString() {
    return 'SelectButtonEvent.setActive(isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetActiveImpl &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive);

  /// Create a copy of SelectButtonEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetActiveImplCopyWith<_$SetActiveImpl> get copyWith =>
      __$$SetActiveImplCopyWithImpl<_$SetActiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isActive) setActive,
  }) {
    return setActive(isActive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isActive)? setActive,
  }) {
    return setActive?.call(isActive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isActive)? setActive,
    required TResult orElse(),
  }) {
    if (setActive != null) {
      return setActive(isActive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetActive value) setActive,
  }) {
    return setActive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetActive value)? setActive,
  }) {
    return setActive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetActive value)? setActive,
    required TResult orElse(),
  }) {
    if (setActive != null) {
      return setActive(this);
    }
    return orElse();
  }
}

abstract class _SetActive implements SelectButtonEvent {
  const factory _SetActive({required final bool isActive}) = _$SetActiveImpl;

  @override
  bool get isActive;

  /// Create a copy of SelectButtonEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetActiveImplCopyWith<_$SetActiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectButtonState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;

  /// Create a copy of SelectButtonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectButtonStateCopyWith<SelectButtonState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectButtonStateCopyWith<$Res> {
  factory $SelectButtonStateCopyWith(
          SelectButtonState value, $Res Function(SelectButtonState) then) =
      _$SelectButtonStateCopyWithImpl<$Res, SelectButtonState>;
  @useResult
  $Res call({DefaultStatus status, bool isActive});
}

/// @nodoc
class _$SelectButtonStateCopyWithImpl<$Res, $Val extends SelectButtonState>
    implements $SelectButtonStateCopyWith<$Res> {
  _$SelectButtonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectButtonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectButtonStateImplCopyWith<$Res>
    implements $SelectButtonStateCopyWith<$Res> {
  factory _$$SelectButtonStateImplCopyWith(_$SelectButtonStateImpl value,
          $Res Function(_$SelectButtonStateImpl) then) =
      __$$SelectButtonStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, bool isActive});
}

/// @nodoc
class __$$SelectButtonStateImplCopyWithImpl<$Res>
    extends _$SelectButtonStateCopyWithImpl<$Res, _$SelectButtonStateImpl>
    implements _$$SelectButtonStateImplCopyWith<$Res> {
  __$$SelectButtonStateImplCopyWithImpl(_$SelectButtonStateImpl _value,
      $Res Function(_$SelectButtonStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectButtonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? isActive = null,
  }) {
    return _then(_$SelectButtonStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectButtonStateImpl implements _SelectButtonState {
  const _$SelectButtonStateImpl({required this.status, required this.isActive});

  @override
  final DefaultStatus status;
  @override
  final bool isActive;

  @override
  String toString() {
    return 'SelectButtonState(status: $status, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectButtonStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, isActive);

  /// Create a copy of SelectButtonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectButtonStateImplCopyWith<_$SelectButtonStateImpl> get copyWith =>
      __$$SelectButtonStateImplCopyWithImpl<_$SelectButtonStateImpl>(
          this, _$identity);
}

abstract class _SelectButtonState implements SelectButtonState {
  const factory _SelectButtonState(
      {required final DefaultStatus status,
      required final bool isActive}) = _$SelectButtonStateImpl;

  @override
  DefaultStatus get status;
  @override
  bool get isActive;

  /// Create a copy of SelectButtonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectButtonStateImplCopyWith<_$SelectButtonStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
