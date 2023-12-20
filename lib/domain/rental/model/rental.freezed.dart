// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Rental {
  String get id => throw _privateConstructorUsedError;
  StringVO get name => throw _privateConstructorUsedError;
  Contact? get contact => throw _privateConstructorUsedError;
  Gender? get gender => throw _privateConstructorUsedError;
  Age? get age => throw _privateConstructorUsedError;
  BodySpec? get bodySpec => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get endAt => throw _privateConstructorUsedError;
  RentalReturnType get returnType => throw _privateConstructorUsedError;
  RentalShopProduct get mainEquipmentsRentalProduct =>
      throw _privateConstructorUsedError;
  RentalShopProduct get apparelEquipmentsRentalProduct =>
      throw _privateConstructorUsedError;
  RentalShopProduct get accessoryEquipmentsRentalProduct =>
      throw _privateConstructorUsedError;
  List<DateTimeTickets>? get dateTimeTickets =>
      throw _privateConstructorUsedError;

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalCopyWith<Rental> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalCopyWith<$Res> {
  factory $RentalCopyWith(Rental value, $Res Function(Rental) then) =
      _$RentalCopyWithImpl<$Res, Rental>;
  @useResult
  $Res call(
      {String id,
      StringVO name,
      Contact? contact,
      Gender? gender,
      Age? age,
      BodySpec? bodySpec,
      DateTime? startAt,
      DateTime? endAt,
      RentalReturnType returnType,
      RentalShopProduct mainEquipmentsRentalProduct,
      RentalShopProduct apparelEquipmentsRentalProduct,
      RentalShopProduct accessoryEquipmentsRentalProduct,
      List<DateTimeTickets>? dateTimeTickets});

  $ContactCopyWith<$Res>? get contact;
  $BodySpecCopyWith<$Res>? get bodySpec;
  $RentalShopProductCopyWith<$Res> get mainEquipmentsRentalProduct;
  $RentalShopProductCopyWith<$Res> get apparelEquipmentsRentalProduct;
  $RentalShopProductCopyWith<$Res> get accessoryEquipmentsRentalProduct;
}

/// @nodoc
class _$RentalCopyWithImpl<$Res, $Val extends Rental>
    implements $RentalCopyWith<$Res> {
  _$RentalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? contact = freezed,
    Object? gender = freezed,
    Object? age = freezed,
    Object? bodySpec = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? returnType = null,
    Object? mainEquipmentsRentalProduct = null,
    Object? apparelEquipmentsRentalProduct = null,
    Object? accessoryEquipmentsRentalProduct = null,
    Object? dateTimeTickets = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age?,
      bodySpec: freezed == bodySpec
          ? _value.bodySpec
          : bodySpec // ignore: cast_nullable_to_non_nullable
              as BodySpec?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnType: null == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as RentalReturnType,
      mainEquipmentsRentalProduct: null == mainEquipmentsRentalProduct
          ? _value.mainEquipmentsRentalProduct
          : mainEquipmentsRentalProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct,
      apparelEquipmentsRentalProduct: null == apparelEquipmentsRentalProduct
          ? _value.apparelEquipmentsRentalProduct
          : apparelEquipmentsRentalProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct,
      accessoryEquipmentsRentalProduct: null == accessoryEquipmentsRentalProduct
          ? _value.accessoryEquipmentsRentalProduct
          : accessoryEquipmentsRentalProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct,
      dateTimeTickets: freezed == dateTimeTickets
          ? _value.dateTimeTickets
          : dateTimeTickets // ignore: cast_nullable_to_non_nullable
              as List<DateTimeTickets>?,
    ) as $Val);
  }

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContactCopyWith<$Res>? get contact {
    if (_value.contact == null) {
      return null;
    }

    return $ContactCopyWith<$Res>(_value.contact!, (value) {
      return _then(_value.copyWith(contact: value) as $Val);
    });
  }

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodySpecCopyWith<$Res>? get bodySpec {
    if (_value.bodySpec == null) {
      return null;
    }

    return $BodySpecCopyWith<$Res>(_value.bodySpec!, (value) {
      return _then(_value.copyWith(bodySpec: value) as $Val);
    });
  }

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductCopyWith<$Res> get mainEquipmentsRentalProduct {
    return $RentalShopProductCopyWith<$Res>(_value.mainEquipmentsRentalProduct,
        (value) {
      return _then(_value.copyWith(mainEquipmentsRentalProduct: value) as $Val);
    });
  }

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductCopyWith<$Res> get apparelEquipmentsRentalProduct {
    return $RentalShopProductCopyWith<$Res>(
        _value.apparelEquipmentsRentalProduct, (value) {
      return _then(
          _value.copyWith(apparelEquipmentsRentalProduct: value) as $Val);
    });
  }

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductCopyWith<$Res> get accessoryEquipmentsRentalProduct {
    return $RentalShopProductCopyWith<$Res>(
        _value.accessoryEquipmentsRentalProduct, (value) {
      return _then(
          _value.copyWith(accessoryEquipmentsRentalProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalImplCopyWith<$Res> implements $RentalCopyWith<$Res> {
  factory _$$RentalImplCopyWith(
          _$RentalImpl value, $Res Function(_$RentalImpl) then) =
      __$$RentalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      StringVO name,
      Contact? contact,
      Gender? gender,
      Age? age,
      BodySpec? bodySpec,
      DateTime? startAt,
      DateTime? endAt,
      RentalReturnType returnType,
      RentalShopProduct mainEquipmentsRentalProduct,
      RentalShopProduct apparelEquipmentsRentalProduct,
      RentalShopProduct accessoryEquipmentsRentalProduct,
      List<DateTimeTickets>? dateTimeTickets});

  @override
  $ContactCopyWith<$Res>? get contact;
  @override
  $BodySpecCopyWith<$Res>? get bodySpec;
  @override
  $RentalShopProductCopyWith<$Res> get mainEquipmentsRentalProduct;
  @override
  $RentalShopProductCopyWith<$Res> get apparelEquipmentsRentalProduct;
  @override
  $RentalShopProductCopyWith<$Res> get accessoryEquipmentsRentalProduct;
}

/// @nodoc
class __$$RentalImplCopyWithImpl<$Res>
    extends _$RentalCopyWithImpl<$Res, _$RentalImpl>
    implements _$$RentalImplCopyWith<$Res> {
  __$$RentalImplCopyWithImpl(
      _$RentalImpl _value, $Res Function(_$RentalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? contact = freezed,
    Object? gender = freezed,
    Object? age = freezed,
    Object? bodySpec = freezed,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? returnType = null,
    Object? mainEquipmentsRentalProduct = null,
    Object? apparelEquipmentsRentalProduct = null,
    Object? accessoryEquipmentsRentalProduct = null,
    Object? dateTimeTickets = freezed,
  }) {
    return _then(_$RentalImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as Contact?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as Age?,
      bodySpec: freezed == bodySpec
          ? _value.bodySpec
          : bodySpec // ignore: cast_nullable_to_non_nullable
              as BodySpec?,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      returnType: null == returnType
          ? _value.returnType
          : returnType // ignore: cast_nullable_to_non_nullable
              as RentalReturnType,
      mainEquipmentsRentalProduct: null == mainEquipmentsRentalProduct
          ? _value.mainEquipmentsRentalProduct
          : mainEquipmentsRentalProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct,
      apparelEquipmentsRentalProduct: null == apparelEquipmentsRentalProduct
          ? _value.apparelEquipmentsRentalProduct
          : apparelEquipmentsRentalProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct,
      accessoryEquipmentsRentalProduct: null == accessoryEquipmentsRentalProduct
          ? _value.accessoryEquipmentsRentalProduct
          : accessoryEquipmentsRentalProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct,
      dateTimeTickets: freezed == dateTimeTickets
          ? _value._dateTimeTickets
          : dateTimeTickets // ignore: cast_nullable_to_non_nullable
              as List<DateTimeTickets>?,
    ));
  }
}

/// @nodoc

class _$RentalImpl extends _Rental {
  const _$RentalImpl(
      {required this.id,
      required this.name,
      required this.contact,
      required this.gender,
      required this.age,
      required this.bodySpec,
      required this.startAt,
      required this.endAt,
      required this.returnType,
      required this.mainEquipmentsRentalProduct,
      required this.apparelEquipmentsRentalProduct,
      required this.accessoryEquipmentsRentalProduct,
      required final List<DateTimeTickets>? dateTimeTickets})
      : _dateTimeTickets = dateTimeTickets,
        super._();

  @override
  final String id;
  @override
  final StringVO name;
  @override
  final Contact? contact;
  @override
  final Gender? gender;
  @override
  final Age? age;
  @override
  final BodySpec? bodySpec;
  @override
  final DateTime? startAt;
  @override
  final DateTime? endAt;
  @override
  final RentalReturnType returnType;
  @override
  final RentalShopProduct mainEquipmentsRentalProduct;
  @override
  final RentalShopProduct apparelEquipmentsRentalProduct;
  @override
  final RentalShopProduct accessoryEquipmentsRentalProduct;
  final List<DateTimeTickets>? _dateTimeTickets;
  @override
  List<DateTimeTickets>? get dateTimeTickets {
    final value = _dateTimeTickets;
    if (value == null) return null;
    if (_dateTimeTickets is EqualUnmodifiableListView) return _dateTimeTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Rental(id: $id, name: $name, contact: $contact, gender: $gender, age: $age, bodySpec: $bodySpec, startAt: $startAt, endAt: $endAt, returnType: $returnType, mainEquipmentsRentalProduct: $mainEquipmentsRentalProduct, apparelEquipmentsRentalProduct: $apparelEquipmentsRentalProduct, accessoryEquipmentsRentalProduct: $accessoryEquipmentsRentalProduct, dateTimeTickets: $dateTimeTickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.bodySpec, bodySpec) ||
                other.bodySpec == bodySpec) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.returnType, returnType) ||
                other.returnType == returnType) &&
            (identical(other.mainEquipmentsRentalProduct,
                    mainEquipmentsRentalProduct) ||
                other.mainEquipmentsRentalProduct ==
                    mainEquipmentsRentalProduct) &&
            (identical(other.apparelEquipmentsRentalProduct,
                    apparelEquipmentsRentalProduct) ||
                other.apparelEquipmentsRentalProduct ==
                    apparelEquipmentsRentalProduct) &&
            (identical(other.accessoryEquipmentsRentalProduct,
                    accessoryEquipmentsRentalProduct) ||
                other.accessoryEquipmentsRentalProduct ==
                    accessoryEquipmentsRentalProduct) &&
            const DeepCollectionEquality()
                .equals(other._dateTimeTickets, _dateTimeTickets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      contact,
      gender,
      age,
      bodySpec,
      startAt,
      endAt,
      returnType,
      mainEquipmentsRentalProduct,
      apparelEquipmentsRentalProduct,
      accessoryEquipmentsRentalProduct,
      const DeepCollectionEquality().hash(_dateTimeTickets));

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalImplCopyWith<_$RentalImpl> get copyWith =>
      __$$RentalImplCopyWithImpl<_$RentalImpl>(this, _$identity);
}

abstract class _Rental extends Rental {
  const factory _Rental(
      {required final String id,
      required final StringVO name,
      required final Contact? contact,
      required final Gender? gender,
      required final Age? age,
      required final BodySpec? bodySpec,
      required final DateTime? startAt,
      required final DateTime? endAt,
      required final RentalReturnType returnType,
      required final RentalShopProduct mainEquipmentsRentalProduct,
      required final RentalShopProduct apparelEquipmentsRentalProduct,
      required final RentalShopProduct accessoryEquipmentsRentalProduct,
      required final List<DateTimeTickets>? dateTimeTickets}) = _$RentalImpl;
  const _Rental._() : super._();

  @override
  String get id;
  @override
  StringVO get name;
  @override
  Contact? get contact;
  @override
  Gender? get gender;
  @override
  Age? get age;
  @override
  BodySpec? get bodySpec;
  @override
  DateTime? get startAt;
  @override
  DateTime? get endAt;
  @override
  RentalReturnType get returnType;
  @override
  RentalShopProduct get mainEquipmentsRentalProduct;
  @override
  RentalShopProduct get apparelEquipmentsRentalProduct;
  @override
  RentalShopProduct get accessoryEquipmentsRentalProduct;
  @override
  List<DateTimeTickets>? get dateTimeTickets;

  /// Create a copy of Rental
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalImplCopyWith<_$RentalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
