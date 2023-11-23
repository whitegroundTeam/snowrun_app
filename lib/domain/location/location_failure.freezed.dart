// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(AppError appError) unexpectedWithErrorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function(AppError appError)? unexpectedWithErrorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(AppError appError)? unexpectedWithErrorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedWithErrorError value)
        unexpectedWithErrorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnexpectedWithErrorError value)?
        unexpectedWithErrorError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedWithErrorError value)? unexpectedWithErrorError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationFailureCopyWith<$Res> {
  factory $LocationFailureCopyWith(
          LocationFailure value, $Res Function(LocationFailure) then) =
      _$LocationFailureCopyWithImpl<$Res, LocationFailure>;
}

/// @nodoc
class _$LocationFailureCopyWithImpl<$Res, $Val extends LocationFailure>
    implements $LocationFailureCopyWith<$Res> {
  _$LocationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UnexpectedImplCopyWith<$Res> {
  factory _$$UnexpectedImplCopyWith(
          _$UnexpectedImpl value, $Res Function(_$UnexpectedImpl) then) =
      __$$UnexpectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnexpectedImplCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res, _$UnexpectedImpl>
    implements _$$UnexpectedImplCopyWith<$Res> {
  __$$UnexpectedImplCopyWithImpl(
      _$UnexpectedImpl _value, $Res Function(_$UnexpectedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnexpectedImpl implements _Unexpected {
  const _$UnexpectedImpl();

  @override
  String toString() {
    return 'LocationFailure.unexpected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnexpectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(AppError appError) unexpectedWithErrorError,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function(AppError appError)? unexpectedWithErrorError,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(AppError appError)? unexpectedWithErrorError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedWithErrorError value)
        unexpectedWithErrorError,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnexpectedWithErrorError value)?
        unexpectedWithErrorError,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedWithErrorError value)? unexpectedWithErrorError,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements LocationFailure {
  const factory _Unexpected() = _$UnexpectedImpl;
}

/// @nodoc
abstract class _$$UnexpectedWithErrorErrorImplCopyWith<$Res> {
  factory _$$UnexpectedWithErrorErrorImplCopyWith(
          _$UnexpectedWithErrorErrorImpl value,
          $Res Function(_$UnexpectedWithErrorErrorImpl) then) =
      __$$UnexpectedWithErrorErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppError appError});

  $AppErrorCopyWith<$Res> get appError;
}

/// @nodoc
class __$$UnexpectedWithErrorErrorImplCopyWithImpl<$Res>
    extends _$LocationFailureCopyWithImpl<$Res, _$UnexpectedWithErrorErrorImpl>
    implements _$$UnexpectedWithErrorErrorImplCopyWith<$Res> {
  __$$UnexpectedWithErrorErrorImplCopyWithImpl(
      _$UnexpectedWithErrorErrorImpl _value,
      $Res Function(_$UnexpectedWithErrorErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appError = null,
  }) {
    return _then(_$UnexpectedWithErrorErrorImpl(
      null == appError
          ? _value.appError
          : appError // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppErrorCopyWith<$Res> get appError {
    return $AppErrorCopyWith<$Res>(_value.appError, (value) {
      return _then(_value.copyWith(appError: value));
    });
  }
}

/// @nodoc

class _$UnexpectedWithErrorErrorImpl implements _UnexpectedWithErrorError {
  const _$UnexpectedWithErrorErrorImpl(this.appError);

  @override
  final AppError appError;

  @override
  String toString() {
    return 'LocationFailure.unexpectedWithErrorError(appError: $appError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedWithErrorErrorImpl &&
            (identical(other.appError, appError) ||
                other.appError == appError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedWithErrorErrorImplCopyWith<_$UnexpectedWithErrorErrorImpl>
      get copyWith => __$$UnexpectedWithErrorErrorImplCopyWithImpl<
          _$UnexpectedWithErrorErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unexpected,
    required TResult Function(AppError appError) unexpectedWithErrorError,
  }) {
    return unexpectedWithErrorError(appError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unexpected,
    TResult? Function(AppError appError)? unexpectedWithErrorError,
  }) {
    return unexpectedWithErrorError?.call(appError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unexpected,
    TResult Function(AppError appError)? unexpectedWithErrorError,
    required TResult orElse(),
  }) {
    if (unexpectedWithErrorError != null) {
      return unexpectedWithErrorError(appError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_UnexpectedWithErrorError value)
        unexpectedWithErrorError,
  }) {
    return unexpectedWithErrorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_UnexpectedWithErrorError value)?
        unexpectedWithErrorError,
  }) {
    return unexpectedWithErrorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_UnexpectedWithErrorError value)? unexpectedWithErrorError,
    required TResult orElse(),
  }) {
    if (unexpectedWithErrorError != null) {
      return unexpectedWithErrorError(this);
    }
    return orElse();
  }
}

abstract class _UnexpectedWithErrorError implements LocationFailure {
  const factory _UnexpectedWithErrorError(final AppError appError) =
      _$UnexpectedWithErrorErrorImpl;

  AppError get appError;
  @JsonKey(ignore: true)
  _$$UnexpectedWithErrorErrorImplCopyWith<_$UnexpectedWithErrorErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
