// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vertex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Vertex {
  ListVO<List<double>> get coordinates => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VertexCopyWith<Vertex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VertexCopyWith<$Res> {
  factory $VertexCopyWith(Vertex value, $Res Function(Vertex) then) =
      _$VertexCopyWithImpl<$Res, Vertex>;
  @useResult
  $Res call({ListVO<List<double>> coordinates});
}

/// @nodoc
class _$VertexCopyWithImpl<$Res, $Val extends Vertex>
    implements $VertexCopyWith<$Res> {
  _$VertexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ListVO<List<double>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VertexCopyWith<$Res> implements $VertexCopyWith<$Res> {
  factory _$$_VertexCopyWith(_$_Vertex value, $Res Function(_$_Vertex) then) =
      __$$_VertexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListVO<List<double>> coordinates});
}

/// @nodoc
class __$$_VertexCopyWithImpl<$Res>
    extends _$VertexCopyWithImpl<$Res, _$_Vertex>
    implements _$$_VertexCopyWith<$Res> {
  __$$_VertexCopyWithImpl(_$_Vertex _value, $Res Function(_$_Vertex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_$_Vertex(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ListVO<List<double>>,
    ));
  }
}

/// @nodoc

class _$_Vertex extends _Vertex {
  const _$_Vertex({required this.coordinates}) : super._();

  @override
  final ListVO<List<double>> coordinates;

  @override
  String toString() {
    return 'Vertex(coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vertex &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VertexCopyWith<_$_Vertex> get copyWith =>
      __$$_VertexCopyWithImpl<_$_Vertex>(this, _$identity);
}

abstract class _Vertex extends Vertex {
  const factory _Vertex({required final ListVO<List<double>> coordinates}) =
      _$_Vertex;
  const _Vertex._() : super._();

  @override
  ListVO<List<double>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_VertexCopyWith<_$_Vertex> get copyWith =>
      throw _privateConstructorUsedError;
}
