// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boundary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Boundary {
  StringVO get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoundaryCopyWith<Boundary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundaryCopyWith<$Res> {
  factory $BoundaryCopyWith(Boundary value, $Res Function(Boundary) then) =
      _$BoundaryCopyWithImpl<$Res, Boundary>;
  @useResult
  $Res call({StringVO name});
}

/// @nodoc
class _$BoundaryCopyWithImpl<$Res, $Val extends Boundary>
    implements $BoundaryCopyWith<$Res> {
  _$BoundaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BoundaryImplCopyWith<$Res>
    implements $BoundaryCopyWith<$Res> {
  factory _$$BoundaryImplCopyWith(
          _$BoundaryImpl value, $Res Function(_$BoundaryImpl) then) =
      __$$BoundaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StringVO name});
}

/// @nodoc
class __$$BoundaryImplCopyWithImpl<$Res>
    extends _$BoundaryCopyWithImpl<$Res, _$BoundaryImpl>
    implements _$$BoundaryImplCopyWith<$Res> {
  __$$BoundaryImplCopyWithImpl(
      _$BoundaryImpl _value, $Res Function(_$BoundaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BoundaryImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$BoundaryImpl extends _Boundary {
  const _$BoundaryImpl({required this.name}) : super._();

  @override
  final StringVO name;

  @override
  String toString() {
    return 'Boundary(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BoundaryImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundaryImplCopyWith<_$BoundaryImpl> get copyWith =>
      __$$BoundaryImplCopyWithImpl<_$BoundaryImpl>(this, _$identity);
}

abstract class _Boundary extends Boundary {
  const factory _Boundary({required final StringVO name}) = _$BoundaryImpl;
  const _Boundary._() : super._();

  @override
  StringVO get name;
  @override
  @JsonKey(ignore: true)
  _$$BoundaryImplCopyWith<_$BoundaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
