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

import 'application/location/location_bloc.dart' as _i4;
import 'application/place/place_bloc.dart' as _i13;
import 'domain/location/i_location_repository.dart' as _i7;
import 'domain/place/i_place_repository.dart' as _i9;
import 'domain/user/i_user_repository.dart' as _i11;
import 'infrastructure/api/authenticated_http_client.dart' as _i5;
import 'infrastructure/api/core_api.dart' as _i6;
import 'infrastructure/hive/hive_provider.dart' as _i3;
import 'infrastructure/location/location_repository.dart' as _i8;
import 'infrastructure/place/place_repository.dart' as _i10;
import 'infrastructure/user/user_repository.dart' as _i12;

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
  gh.factory<_i4.LocationBloc>(() => _i4.LocationBloc());
  gh.lazySingleton<_i5.AuthenticatedHttpClient>(
      () => _i5.AuthenticatedHttpClient(hiveProvider: gh<_i3.HiveProvider>()));
  gh.singleton<_i6.CoreApi>(
      _i6.CoreApi(client: gh<_i5.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i7.ILocationRepository>(
      () => _i8.LocationRepository(gh<_i6.CoreApi>()));
  gh.lazySingleton<_i9.IPlaceRepository>(
      () => _i10.PlaceRepository(gh<_i6.CoreApi>()));
  gh.lazySingleton<_i11.IUserRepository>(
      () => _i12.UserRepository(gh<_i6.CoreApi>()));
  gh.factory<_i13.PlaceBloc>(() => _i13.PlaceBloc(gh<_i9.IPlaceRepository>()));
  return getIt;
}
