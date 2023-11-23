// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_refresh_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeRefreshEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRefreshEventCopyWith<$Res> {
  factory $HomeRefreshEventCopyWith(
          HomeRefreshEvent value, $Res Function(HomeRefreshEvent) then) =
      _$HomeRefreshEventCopyWithImpl<$Res, HomeRefreshEvent>;
}

/// @nodoc
class _$HomeRefreshEventCopyWithImpl<$Res, $Val extends HomeRefreshEvent>
    implements $HomeRefreshEventCopyWith<$Res> {
  _$HomeRefreshEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshImplCopyWith<$Res> {
  factory _$$RefreshImplCopyWith(
          _$RefreshImpl value, $Res Function(_$RefreshImpl) then) =
      __$$RefreshImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshImplCopyWithImpl<$Res>
    extends _$HomeRefreshEventCopyWithImpl<$Res, _$RefreshImpl>
    implements _$$RefreshImplCopyWith<$Res> {
  __$$RefreshImplCopyWithImpl(
      _$RefreshImpl _value, $Res Function(_$RefreshImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshImpl implements _Refresh {
  const _$RefreshImpl();

  @override
  String toString() {
    return 'HomeRefreshEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refresh,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refresh,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refresh value) refresh,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refresh value)? refresh,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refresh value)? refresh,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _Refresh implements HomeRefreshEvent {
  const factory _Refresh() = _$RefreshImpl;
}

/// @nodoc
mixin _$HomeRefreshState {
  DateTime get refreshedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeRefreshStateCopyWith<HomeRefreshState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeRefreshStateCopyWith<$Res> {
  factory $HomeRefreshStateCopyWith(
          HomeRefreshState value, $Res Function(HomeRefreshState) then) =
      _$HomeRefreshStateCopyWithImpl<$Res, HomeRefreshState>;
  @useResult
  $Res call({DateTime refreshedAt});
}

/// @nodoc
class _$HomeRefreshStateCopyWithImpl<$Res, $Val extends HomeRefreshState>
    implements $HomeRefreshStateCopyWith<$Res> {
  _$HomeRefreshStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshedAt = null,
  }) {
    return _then(_value.copyWith(
      refreshedAt: null == refreshedAt
          ? _value.refreshedAt
          : refreshedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeRefreshStateImplCopyWith<$Res>
    implements $HomeRefreshStateCopyWith<$Res> {
  factory _$$HomeRefreshStateImplCopyWith(_$HomeRefreshStateImpl value,
          $Res Function(_$HomeRefreshStateImpl) then) =
      __$$HomeRefreshStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime refreshedAt});
}

/// @nodoc
class __$$HomeRefreshStateImplCopyWithImpl<$Res>
    extends _$HomeRefreshStateCopyWithImpl<$Res, _$HomeRefreshStateImpl>
    implements _$$HomeRefreshStateImplCopyWith<$Res> {
  __$$HomeRefreshStateImplCopyWithImpl(_$HomeRefreshStateImpl _value,
      $Res Function(_$HomeRefreshStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshedAt = null,
  }) {
    return _then(_$HomeRefreshStateImpl(
      refreshedAt: null == refreshedAt
          ? _value.refreshedAt
          : refreshedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$HomeRefreshStateImpl implements _HomeRefreshState {
  const _$HomeRefreshStateImpl({required this.refreshedAt});

  @override
  final DateTime refreshedAt;

  @override
  String toString() {
    return 'HomeRefreshState(refreshedAt: $refreshedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeRefreshStateImpl &&
            (identical(other.refreshedAt, refreshedAt) ||
                other.refreshedAt == refreshedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeRefreshStateImplCopyWith<_$HomeRefreshStateImpl> get copyWith =>
      __$$HomeRefreshStateImplCopyWithImpl<_$HomeRefreshStateImpl>(
          this, _$identity);
}

abstract class _HomeRefreshState implements HomeRefreshState {
  const factory _HomeRefreshState({required final DateTime refreshedAt}) =
      _$HomeRefreshStateImpl;

  @override
  DateTime get refreshedAt;
  @override
  @JsonKey(ignore: true)
  _$$HomeRefreshStateImplCopyWith<_$HomeRefreshStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
