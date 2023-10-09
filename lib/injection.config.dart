// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i20;
import 'application/location/location_bloc.dart' as _i18;
import 'application/place/place_bloc.dart' as _i19;
import 'application/user/user_bloc.dart' as _i21;
import 'domain/auth/i_auth_repository.dart' as _i10;
import 'domain/location/i_location_repository.dart' as _i12;
import 'domain/place/i_place_repository.dart' as _i14;
import 'domain/user/i_user_repository.dart' as _i16;
import 'infrastructure/api/authenticated_http_client.dart' as _i8;
import 'infrastructure/api/core_api.dart' as _i9;
import 'infrastructure/auth/auth_repository.dart' as _i11;
import 'infrastructure/hive/hive_provider.dart' as _i6;
import 'infrastructure/location/location_repository.dart' as _i13;
import 'infrastructure/place/place_repository.dart' as _i15;
import 'infrastructure/user/user_repository.dart' as _i17;
import 'presentation/core/toast/toast_bloc.dart' as _i7;
import 'utils/injectable_module.dart' as _i22;

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
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i5.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.singleton<_i6.HiveProvider>(_i6.HiveProvider());
  gh.singleton<_i7.ToastBloc>(_i7.ToastBloc());
  gh.lazySingleton<_i8.AuthenticatedHttpClient>(
      () => _i8.AuthenticatedHttpClient(hiveProvider: gh<_i6.HiveProvider>()));
  gh.singleton<_i9.CoreApi>(
      _i9.CoreApi(client: gh<_i8.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i10.IAuthRepository>(() => _i11.AuthRepository(
        gh<_i4.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
        gh<_i9.CoreApi>(),
      ));
  gh.lazySingleton<_i12.ILocationRepository>(
      () => _i13.LocationRepository(gh<_i9.CoreApi>()));
  gh.lazySingleton<_i14.IPlaceRepository>(
      () => _i15.PlaceRepository(gh<_i9.CoreApi>()));
  gh.lazySingleton<_i16.IUserRepository>(
      () => _i17.UserRepository(gh<_i9.CoreApi>()));
  gh.factory<_i18.LocationBloc>(
      () => _i18.LocationBloc(gh<_i12.ILocationRepository>()));
  gh.factory<_i19.PlaceBloc>(() => _i19.PlaceBloc(gh<_i14.IPlaceRepository>()));
  gh.factory<_i20.SignInFormBloc>(
      () => _i20.SignInFormBloc(gh<_i10.IAuthRepository>()));
  gh.factory<_i21.UserBloc>(() => _i21.UserBloc(gh<_i16.IUserRepository>()));
  return getIt;
}

class _$InjectableModule extends _i22.InjectableModule {}
