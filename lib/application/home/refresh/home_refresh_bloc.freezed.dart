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
abstract class _$$_RefreshCopyWith<$Res> {
  factory _$$_RefreshCopyWith(
          _$_Refresh value, $Res Function(_$_Refresh) then) =
      __$$_RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RefreshCopyWithImpl<$Res>
    extends _$HomeRefreshEventCopyWithImpl<$Res, _$_Refresh>
    implements _$$_RefreshCopyWith<$Res> {
  __$$_RefreshCopyWithImpl(_$_Refresh _value, $Res Function(_$_Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Refresh implements _Refresh {
  const _$_Refresh();

  @override
  String toString() {
    return 'HomeRefreshEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Refresh);
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
  const factory _Refresh() = _$_Refresh;
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
abstract class _$$_HomeRefreshStateCopyWith<$Res>
    implements $HomeRefreshStateCopyWith<$Res> {
  factory _$$_HomeRefreshStateCopyWith(
          _$_HomeRefreshState value, $Res Function(_$_HomeRefreshState) then) =
      __$$_HomeRefreshStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime refreshedAt});
}

/// @nodoc
class __$$_HomeRefreshStateCopyWithImpl<$Res>
    extends _$HomeRefreshStateCopyWithImpl<$Res, _$_HomeRefreshState>
    implements _$$_HomeRefreshStateCopyWith<$Res> {
  __$$_HomeRefreshStateCopyWithImpl(
      _$_HomeRefreshState _value, $Res Function(_$_HomeRefreshState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshedAt = null,
  }) {
    return _then(_$_HomeRefreshState(
      refreshedAt: null == refreshedAt
          ? _value.refreshedAt
          : refreshedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_HomeRefreshState implements _HomeRefreshState {
  const _$_HomeRefreshState({required this.refreshedAt});

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
            other is _$_HomeRefreshState &&
            (identical(other.refreshedAt, refreshedAt) ||
                other.refreshedAt == refreshedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeRefreshStateCopyWith<_$_HomeRefreshState> get copyWith =>
      __$$_HomeRefreshStateCopyWithImpl<_$_HomeRefreshState>(this, _$identity);
}

abstract class _HomeRefreshState implements HomeRefreshState {
  const factory _HomeRefreshState({required final DateTime refreshedAt}) =
      _$_HomeRefreshState;

  @override
  DateTime get refreshedAt;
  @override
  @JsonKey(ignore: true)
  _$$_HomeRefreshStateCopyWith<_$_HomeRefreshState> get copyWith =>
      throw _privateConstructorUsedError;
}
