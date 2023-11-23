// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vertices.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Vertices {
  VerticesType get type => throw _privateConstructorUsedError;
  ListVO<List<List<double>>> get coordinates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerticesCopyWith<Vertices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerticesCopyWith<$Res> {
  factory $VerticesCopyWith(Vertices value, $Res Function(Vertices) then) =
      _$VerticesCopyWithImpl<$Res, Vertices>;
  @useResult
  $Res call({VerticesType type, ListVO<List<List<double>>> coordinates});
}

/// @nodoc
class _$VerticesCopyWithImpl<$Res, $Val extends Vertices>
    implements $VerticesCopyWith<$Res> {
  _$VerticesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VerticesType,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ListVO<List<List<double>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerticesImplCopyWith<$Res>
    implements $VerticesCopyWith<$Res> {
  factory _$$VerticesImplCopyWith(
          _$VerticesImpl value, $Res Function(_$VerticesImpl) then) =
      __$$VerticesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({VerticesType type, ListVO<List<List<double>>> coordinates});
}

/// @nodoc
class __$$VerticesImplCopyWithImpl<$Res>
    extends _$VerticesCopyWithImpl<$Res, _$VerticesImpl>
    implements _$$VerticesImplCopyWith<$Res> {
  __$$VerticesImplCopyWithImpl(
      _$VerticesImpl _value, $Res Function(_$VerticesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$VerticesImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VerticesType,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ListVO<List<List<double>>>,
    ));
  }
}

/// @nodoc

class _$VerticesImpl extends _Vertices {
  const _$VerticesImpl({required this.type, required this.coordinates})
      : super._();

  @override
  final VerticesType type;
  @override
  final ListVO<List<List<double>>> coordinates;

  @override
  String toString() {
    return 'Vertices(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerticesImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerticesImplCopyWith<_$VerticesImpl> get copyWith =>
      __$$VerticesImplCopyWithImpl<_$VerticesImpl>(this, _$identity);
}

abstract class _Vertices extends Vertices {
  const factory _Vertices(
      {required final VerticesType type,
      required final ListVO<List<List<double>>> coordinates}) = _$VerticesImpl;
  const _Vertices._() : super._();

  @override
  VerticesType get type;
  @override
  ListVO<List<List<double>>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$VerticesImplCopyWith<_$VerticesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
