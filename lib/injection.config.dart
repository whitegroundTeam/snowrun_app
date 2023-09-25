// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/location/location_bloc.dart' as _i15;
import 'application/place/place_bloc.dart' as _i16;
import 'application/user/user_bloc.dart' as _i17;
import 'domain/location/i_location_repository.dart' as _i9;
import 'domain/place/i_place_repository.dart' as _i11;
import 'domain/user/i_user_repository.dart' as _i13;
import 'infrastructure/api/authenticated_http_client.dart' as _i7;
import 'infrastructure/api/core_api.dart' as _i8;
import 'infrastructure/hive/hive_provider.dart' as _i5;
import 'infrastructure/location/location_repository.dart' as _i10;
import 'infrastructure/place/place_repository.dart' as _i12;
import 'infrastructure/user/user_repository.dart' as _i14;
import 'presentation/core/toast/common_toast.dart' as _i3;
import 'presentation/core/toast/toast_bloc.dart' as _i6;

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
  gh.factory<_i3.CommonToast>(() => _i3.CommonToast(
        key: gh<_i4.Key>(),
        message: gh<String>(),
      ));
  gh.singleton<_i5.HiveProvider>(_i5.HiveProvider());
  gh.singleton<_i6.ToastBloc>(_i6.ToastBloc());
  gh.lazySingleton<_i7.AuthenticatedHttpClient>(
      () => _i7.AuthenticatedHttpClient(hiveProvider: gh<_i5.HiveProvider>()));
  gh.singleton<_i8.CoreApi>(
      _i8.CoreApi(client: gh<_i7.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i9.ILocationRepository>(
      () => _i10.LocationRepository(gh<_i8.CoreApi>()));
  gh.lazySingleton<_i11.IPlaceRepository>(
      () => _i12.PlaceRepository(gh<_i8.CoreApi>()));
  gh.lazySingleton<_i13.IUserRepository>(
      () => _i14.UserRepository(gh<_i8.CoreApi>()));
  gh.factory<_i15.LocationBloc>(
      () => _i15.LocationBloc(gh<_i9.ILocationRepository>()));
  gh.factory<_i16.PlaceBloc>(() => _i16.PlaceBloc(gh<_i11.IPlaceRepository>()));
  gh.factory<_i17.UserBloc>(() => _i17.UserBloc(gh<_i13.IUserRepository>()));
  return getIt;
}
