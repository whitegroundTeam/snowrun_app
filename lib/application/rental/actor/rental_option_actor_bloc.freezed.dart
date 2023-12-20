// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_option_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalOptionActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RentalShopProductOption> productOptions)
        init,
    required TResult Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)
        select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RentalShopProductOption> productOptions)? init,
    TResult? Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)?
        select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RentalShopProductOption> productOptions)? init,
    TResult Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)?
        select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Select value) select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Select value)? select,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalOptionActorEventCopyWith<$Res> {
  factory $RentalOptionActorEventCopyWith(RentalOptionActorEvent value,
          $Res Function(RentalOptionActorEvent) then) =
      _$RentalOptionActorEventCopyWithImpl<$Res, RentalOptionActorEvent>;
}

/// @nodoc
class _$RentalOptionActorEventCopyWithImpl<$Res,
        $Val extends RentalOptionActorEvent>
    implements $RentalOptionActorEventCopyWith<$Res> {
  _$RentalOptionActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RentalShopProductOption> productOptions});
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$RentalOptionActorEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productOptions = null,
  }) {
    return _then(_$InitImpl(
      productOptions: null == productOptions
          ? _value._productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as List<RentalShopProductOption>,
    ));
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl(
      {required final List<RentalShopProductOption> productOptions})
      : _productOptions = productOptions;

  final List<RentalShopProductOption> _productOptions;
  @override
  List<RentalShopProductOption> get productOptions {
    if (_productOptions is EqualUnmodifiableListView) return _productOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productOptions);
  }

  @override
  String toString() {
    return 'RentalOptionActorEvent.init(productOptions: $productOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            const DeepCollectionEquality()
                .equals(other._productOptions, _productOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_productOptions));

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RentalShopProductOption> productOptions)
        init,
    required TResult Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)
        select,
  }) {
    return init(productOptions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RentalShopProductOption> productOptions)? init,
    TResult? Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)?
        select,
  }) {
    return init?.call(productOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RentalShopProductOption> productOptions)? init,
    TResult Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)?
        select,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(productOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Select value) select,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Select value)? select,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements RentalOptionActorEvent {
  const factory _Init(
          {required final List<RentalShopProductOption> productOptions}) =
      _$InitImpl;

  List<RentalShopProductOption> get productOptions;

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RentalShopProductOption rentalShopProductOption,
      RentalShopProductOptionItem rentalShopProductOptionItem});

  $RentalShopProductOptionCopyWith<$Res> get rentalShopProductOption;
  $RentalShopProductOptionItemCopyWith<$Res> get rentalShopProductOptionItem;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$RentalOptionActorEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalShopProductOption = null,
    Object? rentalShopProductOptionItem = null,
  }) {
    return _then(_$SelectImpl(
      rentalShopProductOption: null == rentalShopProductOption
          ? _value.rentalShopProductOption
          : rentalShopProductOption // ignore: cast_nullable_to_non_nullable
              as RentalShopProductOption,
      rentalShopProductOptionItem: null == rentalShopProductOptionItem
          ? _value.rentalShopProductOptionItem
          : rentalShopProductOptionItem // ignore: cast_nullable_to_non_nullable
              as RentalShopProductOptionItem,
    ));
  }

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductOptionCopyWith<$Res> get rentalShopProductOption {
    return $RentalShopProductOptionCopyWith<$Res>(
        _value.rentalShopProductOption, (value) {
      return _then(_value.copyWith(rentalShopProductOption: value));
    });
  }

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductOptionItemCopyWith<$Res> get rentalShopProductOptionItem {
    return $RentalShopProductOptionItemCopyWith<$Res>(
        _value.rentalShopProductOptionItem, (value) {
      return _then(_value.copyWith(rentalShopProductOptionItem: value));
    });
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(
      {required this.rentalShopProductOption,
      required this.rentalShopProductOptionItem});

  @override
  final RentalShopProductOption rentalShopProductOption;
  @override
  final RentalShopProductOptionItem rentalShopProductOptionItem;

  @override
  String toString() {
    return 'RentalOptionActorEvent.select(rentalShopProductOption: $rentalShopProductOption, rentalShopProductOptionItem: $rentalShopProductOptionItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(
                    other.rentalShopProductOption, rentalShopProductOption) ||
                other.rentalShopProductOption == rentalShopProductOption) &&
            (identical(other.rentalShopProductOptionItem,
                    rentalShopProductOptionItem) ||
                other.rentalShopProductOptionItem ==
                    rentalShopProductOptionItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, rentalShopProductOption, rentalShopProductOptionItem);

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RentalShopProductOption> productOptions)
        init,
    required TResult Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)
        select,
  }) {
    return select(rentalShopProductOption, rentalShopProductOptionItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RentalShopProductOption> productOptions)? init,
    TResult? Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)?
        select,
  }) {
    return select?.call(rentalShopProductOption, rentalShopProductOptionItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RentalShopProductOption> productOptions)? init,
    TResult Function(RentalShopProductOption rentalShopProductOption,
            RentalShopProductOptionItem rentalShopProductOptionItem)?
        select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(rentalShopProductOption, rentalShopProductOptionItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_Select value) select,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_Select value)? select,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_Select value)? select,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements RentalOptionActorEvent {
  const factory _Select(
      {required final RentalShopProductOption rentalShopProductOption,
      required final RentalShopProductOptionItem
          rentalShopProductOptionItem}) = _$SelectImpl;

  RentalShopProductOption get rentalShopProductOption;
  RentalShopProductOptionItem get rentalShopProductOptionItem;

  /// Create a copy of RentalOptionActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RentalOptionActorState {
  DateTime get updatedAt => throw _privateConstructorUsedError;
  RentalOptionSelectionStatus get status => throw _privateConstructorUsedError;
  List<RentalShopProductOption> get productOptions =>
      throw _privateConstructorUsedError; // required Map<RentalShopProductOption, List<RentalShopProductOptionItem>>
//     selectedOptionsMap,
  bool get isValid => throw _privateConstructorUsedError;

  /// Create a copy of RentalOptionActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalOptionActorStateCopyWith<RentalOptionActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalOptionActorStateCopyWith<$Res> {
  factory $RentalOptionActorStateCopyWith(RentalOptionActorState value,
          $Res Function(RentalOptionActorState) then) =
      _$RentalOptionActorStateCopyWithImpl<$Res, RentalOptionActorState>;
  @useResult
  $Res call(
      {DateTime updatedAt,
      RentalOptionSelectionStatus status,
      List<RentalShopProductOption> productOptions,
      bool isValid});
}

/// @nodoc
class _$RentalOptionActorStateCopyWithImpl<$Res,
        $Val extends RentalOptionActorState>
    implements $RentalOptionActorStateCopyWith<$Res> {
  _$RentalOptionActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalOptionActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? status = null,
    Object? productOptions = null,
    Object? isValid = null,
  }) {
    return _then(_value.copyWith(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RentalOptionSelectionStatus,
      productOptions: null == productOptions
          ? _value.productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as List<RentalShopProductOption>,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentalOptionActorStateImplCopyWith<$Res>
    implements $RentalOptionActorStateCopyWith<$Res> {
  factory _$$RentalOptionActorStateImplCopyWith(
          _$RentalOptionActorStateImpl value,
          $Res Function(_$RentalOptionActorStateImpl) then) =
      __$$RentalOptionActorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime updatedAt,
      RentalOptionSelectionStatus status,
      List<RentalShopProductOption> productOptions,
      bool isValid});
}

/// @nodoc
class __$$RentalOptionActorStateImplCopyWithImpl<$Res>
    extends _$RentalOptionActorStateCopyWithImpl<$Res,
        _$RentalOptionActorStateImpl>
    implements _$$RentalOptionActorStateImplCopyWith<$Res> {
  __$$RentalOptionActorStateImplCopyWithImpl(
      _$RentalOptionActorStateImpl _value,
      $Res Function(_$RentalOptionActorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalOptionActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? status = null,
    Object? productOptions = null,
    Object? isValid = null,
  }) {
    return _then(_$RentalOptionActorStateImpl(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RentalOptionSelectionStatus,
      productOptions: null == productOptions
          ? _value._productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as List<RentalShopProductOption>,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RentalOptionActorStateImpl implements _RentalOptionActorState {
  const _$RentalOptionActorStateImpl(
      {required this.updatedAt,
      required this.status,
      required final List<RentalShopProductOption> productOptions,
      required this.isValid})
      : _productOptions = productOptions;

  @override
  final DateTime updatedAt;
  @override
  final RentalOptionSelectionStatus status;
  final List<RentalShopProductOption> _productOptions;
  @override
  List<RentalShopProductOption> get productOptions {
    if (_productOptions is EqualUnmodifiableListView) return _productOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productOptions);
  }

// required Map<RentalShopProductOption, List<RentalShopProductOptionItem>>
//     selectedOptionsMap,
  @override
  final bool isValid;

  @override
  String toString() {
    return 'RentalOptionActorState(updatedAt: $updatedAt, status: $status, productOptions: $productOptions, isValid: $isValid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalOptionActorStateImpl &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._productOptions, _productOptions) &&
            (identical(other.isValid, isValid) || other.isValid == isValid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedAt, status,
      const DeepCollectionEquality().hash(_productOptions), isValid);

  /// Create a copy of RentalOptionActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalOptionActorStateImplCopyWith<_$RentalOptionActorStateImpl>
      get copyWith => __$$RentalOptionActorStateImplCopyWithImpl<
          _$RentalOptionActorStateImpl>(this, _$identity);
}

abstract class _RentalOptionActorState implements RentalOptionActorState {
  const factory _RentalOptionActorState(
      {required final DateTime updatedAt,
      required final RentalOptionSelectionStatus status,
      required final List<RentalShopProductOption> productOptions,
      required final bool isValid}) = _$RentalOptionActorStateImpl;

  @override
  DateTime get updatedAt;
  @override
  RentalOptionSelectionStatus get status;
  @override
  List<RentalShopProductOption>
      get productOptions; // required Map<RentalShopProductOption, List<RentalShopProductOptionItem>>
//     selectedOptionsMap,
  @override
  bool get isValid;

  /// Create a copy of RentalOptionActorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalOptionActorStateImplCopyWith<_$RentalOptionActorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
