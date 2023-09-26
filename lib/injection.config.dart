// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/location/location_bloc.dart' as _i16;
import 'application/place/place_bloc.dart' as _i17;
import 'application/user/user_bloc.dart' as _i18;
import 'domain/location/i_location_repository.dart' as _i10;
import 'domain/place/i_place_repository.dart' as _i12;
import 'domain/user/i_user_repository.dart' as _i14;
import 'infrastructure/api/authenticated_http_client.dart' as _i8;
import 'infrastructure/api/core_api.dart' as _i9;
import 'infrastructure/hive/hive_provider.dart' as _i6;
import 'infrastructure/location/location_repository.dart' as _i11;
import 'infrastructure/place/place_repository.dart' as _i13;
import 'infrastructure/user/user_repository.dart' as _i15;
import 'presentation/core/toast/common_toast.dart' as _i4;
import 'presentation/core/toast/toast_bloc.dart' as _i7;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.factory<_i4.CommonToast>(() => _i4.CommonToast(
        key: gh<_i5.Key>(),
        message: gh<String>(),
      ));
  gh.singleton<_i6.HiveProvider>(_i6.HiveProvider());
  gh.singleton<_i7.ToastBloc>(_i7.ToastBloc());
  gh.lazySingleton<_i8.AuthenticatedHttpClient>(
      () => _i8.AuthenticatedHttpClient(hiveProvider: gh<_i6.HiveProvider>()));
  gh.singleton<_i9.CoreApi>(
      _i9.CoreApi(client: gh<_i8.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i10.ILocationRepository>(
      () => _i11.LocationRepository(gh<_i9.CoreApi>()));
  gh.lazySingleton<_i12.IPlaceRepository>(
      () => _i13.PlaceRepository(gh<_i9.CoreApi>()));
  gh.lazySingleton<_i14.IUserRepository>(
      () => _i15.UserRepository(gh<_i9.CoreApi>()));
  gh.factory<_i16.LocationBloc>(
      () => _i16.LocationBloc(gh<_i10.ILocationRepository>()));
  gh.factory<_i17.PlaceBloc>(() => _i17.PlaceBloc(gh<_i12.IPlaceRepository>()));
  gh.factory<_i18.UserBloc>(() => _i18.UserBloc(gh<_i14.IUserRepository>()));
  return getIt;
}
