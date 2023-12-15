// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'draggable_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DraggableEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Offset offset) updatePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Offset offset)? updatePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Offset offset)? updatePosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePosition value) updatePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePosition value)? updatePosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePosition value)? updatePosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableEventCopyWith<$Res> {
  factory $DraggableEventCopyWith(
          DraggableEvent value, $Res Function(DraggableEvent) then) =
      _$DraggableEventCopyWithImpl<$Res, DraggableEvent>;
}

/// @nodoc
class _$DraggableEventCopyWithImpl<$Res, $Val extends DraggableEvent>
    implements $DraggableEventCopyWith<$Res> {
  _$DraggableEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$DraggableEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl();

  @override
  String toString() {
    return 'DraggableEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Offset offset) updatePosition,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Offset offset)? updatePosition,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Offset offset)? updatePosition,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePosition value) updatePosition,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePosition value)? updatePosition,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePosition value)? updatePosition,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements DraggableEvent {
  const factory _Init() = _$InitImpl;
}

/// @nodoc
abstract class _$$UpdatePositionImplCopyWith<$Res> {
  factory _$$UpdatePositionImplCopyWith(_$UpdatePositionImpl value,
          $Res Function(_$UpdatePositionImpl) then) =
      __$$UpdatePositionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Offset offset});
}

/// @nodoc
class __$$UpdatePositionImplCopyWithImpl<$Res>
    extends _$DraggableEventCopyWithImpl<$Res, _$UpdatePositionImpl>
    implements _$$UpdatePositionImplCopyWith<$Res> {
  __$$UpdatePositionImplCopyWithImpl(
      _$UpdatePositionImpl _value, $Res Function(_$UpdatePositionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
  }) {
    return _then(_$UpdatePositionImpl(
      null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$UpdatePositionImpl implements _UpdatePosition {
  const _$UpdatePositionImpl(this.offset);

  @override
  final Offset offset;

  @override
  String toString() {
    return 'DraggableEvent.updatePosition(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePositionImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePositionImplCopyWith<_$UpdatePositionImpl> get copyWith =>
      __$$UpdatePositionImplCopyWithImpl<_$UpdatePositionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(Offset offset) updatePosition,
  }) {
    return updatePosition(offset);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(Offset offset)? updatePosition,
  }) {
    return updatePosition?.call(offset);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(Offset offset)? updatePosition,
    required TResult orElse(),
  }) {
    if (updatePosition != null) {
      return updatePosition(offset);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_UpdatePosition value) updatePosition,
  }) {
    return updatePosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_UpdatePosition value)? updatePosition,
  }) {
    return updatePosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_UpdatePosition value)? updatePosition,
    required TResult orElse(),
  }) {
    if (updatePosition != null) {
      return updatePosition(this);
    }
    return orElse();
  }
}

abstract class _UpdatePosition implements DraggableEvent {
  const factory _UpdatePosition(final Offset offset) = _$UpdatePositionImpl;

  Offset get offset;
  @JsonKey(ignore: true)
  _$$UpdatePositionImplCopyWith<_$UpdatePositionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DraggableState {
  Offset? get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DraggableStateCopyWith<DraggableState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggableStateCopyWith<$Res> {
  factory $DraggableStateCopyWith(
          DraggableState value, $Res Function(DraggableState) then) =
      _$DraggableStateCopyWithImpl<$Res, DraggableState>;
  @useResult
  $Res call({Offset? offset});
}

/// @nodoc
class _$DraggableStateCopyWithImpl<$Res, $Val extends DraggableState>
    implements $DraggableStateCopyWith<$Res> {
  _$DraggableStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DraggableStateImplCopyWith<$Res>
    implements $DraggableStateCopyWith<$Res> {
  factory _$$DraggableStateImplCopyWith(_$DraggableStateImpl value,
          $Res Function(_$DraggableStateImpl) then) =
      __$$DraggableStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Offset? offset});
}

/// @nodoc
class __$$DraggableStateImplCopyWithImpl<$Res>
    extends _$DraggableStateCopyWithImpl<$Res, _$DraggableStateImpl>
    implements _$$DraggableStateImplCopyWith<$Res> {
  __$$DraggableStateImplCopyWithImpl(
      _$DraggableStateImpl _value, $Res Function(_$DraggableStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = freezed,
  }) {
    return _then(_$DraggableStateImpl(
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as Offset?,
    ));
  }
}

/// @nodoc

class _$DraggableStateImpl implements _DraggableState {
  const _$DraggableStateImpl({required this.offset});

  @override
  final Offset? offset;

  @override
  String toString() {
    return 'DraggableState(offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DraggableStateImpl &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DraggableStateImplCopyWith<_$DraggableStateImpl> get copyWith =>
      __$$DraggableStateImplCopyWithImpl<_$DraggableStateImpl>(
          this, _$identity);
}

abstract class _DraggableState implements DraggableState {
  const factory _DraggableState({required final Offset? offset}) =
      _$DraggableStateImpl;

  @override
  Offset? get offset;
  @override
  @JsonKey(ignore: true)
  _$$DraggableStateImplCopyWith<_$DraggableStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
