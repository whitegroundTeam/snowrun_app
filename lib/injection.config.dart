// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/location/location_bloc.dart' as _i12;
import 'application/place/place_bloc.dart' as _i13;
import 'application/user/user_bloc.dart' as _i14;
import 'domain/location/i_location_repository.dart' as _i6;
import 'domain/place/i_place_repository.dart' as _i8;
import 'domain/user/i_user_repository.dart' as _i10;
import 'infrastructure/api/authenticated_http_client.dart' as _i4;
import 'infrastructure/api/core_api.dart' as _i5;
import 'infrastructure/hive/hive_provider.dart' as _i3;
import 'infrastructure/location/location_repository.dart' as _i7;
import 'infrastructure/place/place_repository.dart' as _i9;
import 'infrastructure/user/user_repository.dart' as _i11;

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
  gh.singleton<_i3.HiveProvider>(_i3.HiveProvider());
  gh.lazySingleton<_i4.AuthenticatedHttpClient>(
      () => _i4.AuthenticatedHttpClient(hiveProvider: gh<_i3.HiveProvider>()));
  gh.singleton<_i5.CoreApi>(
      _i5.CoreApi(client: gh<_i4.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i6.ILocationRepository>(
      () => _i7.LocationRepository(gh<_i5.CoreApi>()));
  gh.lazySingleton<_i8.IPlaceRepository>(
      () => _i9.PlaceRepository(gh<_i5.CoreApi>()));
  gh.lazySingleton<_i10.IUserRepository>(
      () => _i11.UserRepository(gh<_i5.CoreApi>()));
  gh.factory<_i12.LocationBloc>(
      () => _i12.LocationBloc(gh<_i6.ILocationRepository>()));
  gh.factory<_i13.PlaceBloc>(() => _i13.PlaceBloc(gh<_i8.IPlaceRepository>()));
  gh.factory<_i14.UserBloc>(() => _i14.UserBloc(gh<_i10.IUserRepository>()));
  return getIt;
}
