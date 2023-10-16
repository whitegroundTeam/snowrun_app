// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i21;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i19;
import 'application/location/location_bloc.dart' as _i17;
import 'application/place/place_bloc.dart' as _i18;
import 'application/user/user_bloc.dart' as _i20;
import 'domain/auth/i_auth_repository.dart' as _i9;
import 'domain/location/i_location_repository.dart' as _i11;
import 'domain/place/i_place_repository.dart' as _i13;
import 'domain/user/i_user_repository.dart' as _i15;
import 'infrastructure/api/authenticated_http_client.dart' as _i7;
import 'infrastructure/api/core_api.dart' as _i8;
import 'infrastructure/auth/auth_repository.dart' as _i10;
import 'infrastructure/hive/hive_provider.dart' as _i5;
import 'infrastructure/location/location_repository.dart' as _i12;
import 'infrastructure/place/place_repository.dart' as _i14;
import 'infrastructure/user/user_repository.dart' as _i16;
import 'presentation/core/toast/toast_bloc.dart' as _i6;
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
  gh.lazySingleton<_i3.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i4.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.singleton<_i5.HiveProvider>(_i5.HiveProvider());
  gh.singleton<_i6.ToastBloc>(_i6.ToastBloc());
  gh.lazySingleton<_i7.AuthenticatedHttpClient>(
      () => _i7.AuthenticatedHttpClient(hiveProvider: gh<_i5.HiveProvider>()));
  gh.singleton<_i8.CoreApi>(
      _i8.CoreApi(client: gh<_i7.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i9.IAuthRepository>(() => _i10.AuthRepository(
        gh<_i3.FirebaseAuth>(),
        gh<_i4.GoogleSignIn>(),
        gh<_i8.CoreApi>(),
      ));
  gh.lazySingleton<_i11.ILocationRepository>(
      () => _i12.LocationRepository(gh<_i8.CoreApi>()));
  gh.lazySingleton<_i13.IPlaceRepository>(
      () => _i14.PlaceRepository(gh<_i8.CoreApi>()));
  gh.lazySingleton<_i15.IUserRepository>(
      () => _i16.UserRepository(gh<_i8.CoreApi>()));
  gh.factory<_i17.LocationBloc>(
      () => _i17.LocationBloc(gh<_i11.ILocationRepository>()));
  gh.factory<_i18.PlaceBloc>(() => _i18.PlaceBloc(gh<_i13.IPlaceRepository>()));
  gh.factory<_i19.SignInFormBloc>(
      () => _i19.SignInFormBloc(gh<_i9.IAuthRepository>()));
  gh.factory<_i20.UserBloc>(() => _i20.UserBloc(gh<_i15.IUserRepository>()));
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(gh<_i9.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i22.InjectableModule {}
