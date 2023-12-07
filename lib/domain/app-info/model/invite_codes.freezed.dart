// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_codes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InviteCodes {
  ListVO<dynamic> get inviteCodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InviteCodesCopyWith<InviteCodes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteCodesCopyWith<$Res> {
  factory $InviteCodesCopyWith(
          InviteCodes value, $Res Function(InviteCodes) then) =
      _$InviteCodesCopyWithImpl<$Res, InviteCodes>;
  @useResult
  $Res call({ListVO<dynamic> inviteCodes});
}

/// @nodoc
class _$InviteCodesCopyWithImpl<$Res, $Val extends InviteCodes>
    implements $InviteCodesCopyWith<$Res> {
  _$InviteCodesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCodes = null,
  }) {
    return _then(_value.copyWith(
      inviteCodes: null == inviteCodes
          ? _value.inviteCodes
          : inviteCodes // ignore: cast_nullable_to_non_nullable
              as ListVO<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InviteCodesImplCopyWith<$Res>
    implements $InviteCodesCopyWith<$Res> {
  factory _$$InviteCodesImplCopyWith(
          _$InviteCodesImpl value, $Res Function(_$InviteCodesImpl) then) =
      __$$InviteCodesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListVO<dynamic> inviteCodes});
}

/// @nodoc
class __$$InviteCodesImplCopyWithImpl<$Res>
    extends _$InviteCodesCopyWithImpl<$Res, _$InviteCodesImpl>
    implements _$$InviteCodesImplCopyWith<$Res> {
  __$$InviteCodesImplCopyWithImpl(
      _$InviteCodesImpl _value, $Res Function(_$InviteCodesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inviteCodes = null,
  }) {
    return _then(_$InviteCodesImpl(
      inviteCodes: null == inviteCodes
          ? _value.inviteCodes
          : inviteCodes // ignore: cast_nullable_to_non_nullable
              as ListVO<dynamic>,
    ));
  }
}

/// @nodoc

class _$InviteCodesImpl extends _InviteCodes {
  const _$InviteCodesImpl({required this.inviteCodes}) : super._();

  @override
  final ListVO<dynamic> inviteCodes;

  @override
  String toString() {
    return 'InviteCodes(inviteCodes: $inviteCodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InviteCodesImpl &&
            (identical(other.inviteCodes, inviteCodes) ||
                other.inviteCodes == inviteCodes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inviteCodes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InviteCodesImplCopyWith<_$InviteCodesImpl> get copyWith =>
      __$$InviteCodesImplCopyWithImpl<_$InviteCodesImpl>(this, _$identity);
}

abstract class _InviteCodes extends InviteCodes {
  const factory _InviteCodes({required final ListVO<dynamic> inviteCodes}) =
      _$InviteCodesImpl;
  const _InviteCodes._() : super._();

  @override
  ListVO<dynamic> get inviteCodes;
  @override
  @JsonKey(ignore: true)
  _$$InviteCodesImplCopyWith<_$InviteCodesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
