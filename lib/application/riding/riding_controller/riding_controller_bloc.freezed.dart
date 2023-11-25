// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingControllerEvent {
  int? get selectedMarkerSymbolId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectedMarkerSymbolId) selectMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectedMarkerSymbolId)? selectMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectedMarkerSymbolId)? selectMarker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectMarker value) selectMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectMarker value)? selectMarker,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectMarker value)? selectMarker,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingControllerEventCopyWith<RidingControllerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingControllerEventCopyWith<$Res> {
  factory $RidingControllerEventCopyWith(RidingControllerEvent value,
          $Res Function(RidingControllerEvent) then) =
      _$RidingControllerEventCopyWithImpl<$Res, RidingControllerEvent>;
  @useResult
  $Res call({int? selectedMarkerSymbolId});
}

/// @nodoc
class _$RidingControllerEventCopyWithImpl<$Res,
        $Val extends RidingControllerEvent>
    implements $RidingControllerEventCopyWith<$Res> {
  _$RidingControllerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMarkerSymbolId = freezed,
  }) {
    return _then(_value.copyWith(
      selectedMarkerSymbolId: freezed == selectedMarkerSymbolId
          ? _value.selectedMarkerSymbolId
          : selectedMarkerSymbolId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectMarkerImplCopyWith<$Res>
    implements $RidingControllerEventCopyWith<$Res> {
  factory _$$SelectMarkerImplCopyWith(
          _$SelectMarkerImpl value, $Res Function(_$SelectMarkerImpl) then) =
      __$$SelectMarkerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? selectedMarkerSymbolId});
}

/// @nodoc
class __$$SelectMarkerImplCopyWithImpl<$Res>
    extends _$RidingControllerEventCopyWithImpl<$Res, _$SelectMarkerImpl>
    implements _$$SelectMarkerImplCopyWith<$Res> {
  __$$SelectMarkerImplCopyWithImpl(
      _$SelectMarkerImpl _value, $Res Function(_$SelectMarkerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedMarkerSymbolId = freezed,
  }) {
    return _then(_$SelectMarkerImpl(
      freezed == selectedMarkerSymbolId
          ? _value.selectedMarkerSymbolId
          : selectedMarkerSymbolId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SelectMarkerImpl implements _SelectMarker {
  const _$SelectMarkerImpl(this.selectedMarkerSymbolId);

  @override
  final int? selectedMarkerSymbolId;

  @override
  String toString() {
    return 'RidingControllerEvent.selectMarker(selectedMarkerSymbolId: $selectedMarkerSymbolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectMarkerImpl &&
            (identical(other.selectedMarkerSymbolId, selectedMarkerSymbolId) ||
                other.selectedMarkerSymbolId == selectedMarkerSymbolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedMarkerSymbolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectMarkerImplCopyWith<_$SelectMarkerImpl> get copyWith =>
      __$$SelectMarkerImplCopyWithImpl<_$SelectMarkerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? selectedMarkerSymbolId) selectMarker,
  }) {
    return selectMarker(selectedMarkerSymbolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? selectedMarkerSymbolId)? selectMarker,
  }) {
    return selectMarker?.call(selectedMarkerSymbolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? selectedMarkerSymbolId)? selectMarker,
    required TResult orElse(),
  }) {
    if (selectMarker != null) {
      return selectMarker(selectedMarkerSymbolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectMarker value) selectMarker,
  }) {
    return selectMarker(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectMarker value)? selectMarker,
  }) {
    return selectMarker?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectMarker value)? selectMarker,
    required TResult orElse(),
  }) {
    if (selectMarker != null) {
      return selectMarker(this);
    }
    return orElse();
  }
}

abstract class _SelectMarker implements RidingControllerEvent {
  const factory _SelectMarker(final int? selectedMarkerSymbolId) =
      _$SelectMarkerImpl;

  @override
  int? get selectedMarkerSymbolId;
  @override
  @JsonKey(ignore: true)
  _$$SelectMarkerImplCopyWith<_$SelectMarkerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RidingControllerState {
  double get scrolledRatio => throw _privateConstructorUsedError;
  int? get selectedMarkerSymbolId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingControllerStateCopyWith<RidingControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingControllerStateCopyWith<$Res> {
  factory $RidingControllerStateCopyWith(RidingControllerState value,
          $Res Function(RidingControllerState) then) =
      _$RidingControllerStateCopyWithImpl<$Res, RidingControllerState>;
  @useResult
  $Res call({double scrolledRatio, int? selectedMarkerSymbolId});
}

/// @nodoc
class _$RidingControllerStateCopyWithImpl<$Res,
        $Val extends RidingControllerState>
    implements $RidingControllerStateCopyWith<$Res> {
  _$RidingControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrolledRatio = null,
    Object? selectedMarkerSymbolId = freezed,
  }) {
    return _then(_value.copyWith(
      scrolledRatio: null == scrolledRatio
          ? _value.scrolledRatio
          : scrolledRatio // ignore: cast_nullable_to_non_nullable
              as double,
      selectedMarkerSymbolId: freezed == selectedMarkerSymbolId
          ? _value.selectedMarkerSymbolId
          : selectedMarkerSymbolId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RidingControllerStateImplCopyWith<$Res>
    implements $RidingControllerStateCopyWith<$Res> {
  factory _$$RidingControllerStateImplCopyWith(
          _$RidingControllerStateImpl value,
          $Res Function(_$RidingControllerStateImpl) then) =
      __$$RidingControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double scrolledRatio, int? selectedMarkerSymbolId});
}

/// @nodoc
class __$$RidingControllerStateImplCopyWithImpl<$Res>
    extends _$RidingControllerStateCopyWithImpl<$Res,
        _$RidingControllerStateImpl>
    implements _$$RidingControllerStateImplCopyWith<$Res> {
  __$$RidingControllerStateImplCopyWithImpl(_$RidingControllerStateImpl _value,
      $Res Function(_$RidingControllerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scrolledRatio = null,
    Object? selectedMarkerSymbolId = freezed,
  }) {
    return _then(_$RidingControllerStateImpl(
      scrolledRatio: null == scrolledRatio
          ? _value.scrolledRatio
          : scrolledRatio // ignore: cast_nullable_to_non_nullable
              as double,
      selectedMarkerSymbolId: freezed == selectedMarkerSymbolId
          ? _value.selectedMarkerSymbolId
          : selectedMarkerSymbolId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RidingControllerStateImpl implements _RidingControllerState {
  const _$RidingControllerStateImpl(
      {required this.scrolledRatio, this.selectedMarkerSymbolId});

  @override
  final double scrolledRatio;
  @override
  final int? selectedMarkerSymbolId;

  @override
  String toString() {
    return 'RidingControllerState(scrolledRatio: $scrolledRatio, selectedMarkerSymbolId: $selectedMarkerSymbolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RidingControllerStateImpl &&
            (identical(other.scrolledRatio, scrolledRatio) ||
                other.scrolledRatio == scrolledRatio) &&
            (identical(other.selectedMarkerSymbolId, selectedMarkerSymbolId) ||
                other.selectedMarkerSymbolId == selectedMarkerSymbolId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, scrolledRatio, selectedMarkerSymbolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RidingControllerStateImplCopyWith<_$RidingControllerStateImpl>
      get copyWith => __$$RidingControllerStateImplCopyWithImpl<
          _$RidingControllerStateImpl>(this, _$identity);
}

abstract class _RidingControllerState implements RidingControllerState {
  const factory _RidingControllerState(
      {required final double scrolledRatio,
      final int? selectedMarkerSymbolId}) = _$RidingControllerStateImpl;

  @override
  double get scrolledRatio;
  @override
  int? get selectedMarkerSymbolId;
  @override
  @JsonKey(ignore: true)
  _$$RidingControllerStateImplCopyWith<_$RidingControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
