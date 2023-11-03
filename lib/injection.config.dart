// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i26;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i23;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i24;
import 'application/location/location_bloc.dart' as _i20;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i10;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i7;
import 'application/place/place_bloc.dart' as _i21;
import 'application/profile/profile_bloc.dart' as _i22;
import 'application/user/user_bloc.dart' as _i25;
import 'domain/auth/i_auth_repository.dart' as _i12;
import 'domain/location/i_location_repository.dart' as _i14;
import 'domain/place/i_place_repository.dart' as _i16;
import 'domain/user/i_user_repository.dart' as _i18;
import 'infrastructure/api/authenticated_http_client.dart' as _i9;
import 'infrastructure/api/core_api.dart' as _i11;
import 'infrastructure/auth/auth_repository.dart' as _i13;
import 'infrastructure/hive/hive_provider.dart' as _i6;
import 'infrastructure/location/location_repository.dart' as _i15;
import 'infrastructure/place/place_repository.dart' as _i17;
import 'infrastructure/user/user_repository.dart' as _i19;
import 'presentation/core/toast/toast_bloc.dart' as _i8;
import 'utils/injectable_module.dart' as _i27;

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
  gh.lazySingleton<_i4.FirebaseRemoteConfig>(
      () => injectableModule.remoteConfig);
  gh.lazySingleton<_i5.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.singleton<_i6.HiveProvider>(_i6.HiveProvider());
  gh.factory<_i7.PermissionActorBloc>(() => _i7.PermissionActorBloc());
  gh.singleton<_i8.ToastBloc>(_i8.ToastBloc());
  gh.lazySingleton<_i9.AuthenticatedHttpClient>(
      () => _i9.AuthenticatedHttpClient(hiveProvider: gh<_i6.HiveProvider>()));
  gh.factory<_i10.CheckPermissionBloc>(
      () => _i10.CheckPermissionBloc(gh<_i6.HiveProvider>()));
  gh.singleton<_i11.CoreApi>(
      _i11.CoreApi(client: gh<_i9.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i12.IAuthRepository>(() => _i13.AuthRepository(
        gh<_i3.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
        gh<_i11.CoreApi>(),
        gh<_i6.HiveProvider>(),
      ));
  gh.lazySingleton<_i14.ILocationRepository>(
      () => _i15.LocationRepository(gh<_i11.CoreApi>()));
  gh.lazySingleton<_i16.IPlaceRepository>(
      () => _i17.PlaceRepository(gh<_i11.CoreApi>()));
  gh.lazySingleton<_i18.IUserRepository>(
      () => _i19.UserRepository(gh<_i11.CoreApi>()));
  gh.factory<_i20.LocationBloc>(
      () => _i20.LocationBloc(gh<_i14.ILocationRepository>()));
  gh.factory<_i21.PlaceBloc>(() => _i21.PlaceBloc(gh<_i16.IPlaceRepository>()));
  gh.factory<_i22.ProfileBloc>(
      () => _i22.ProfileBloc(gh<_i18.IUserRepository>()));
  gh.factory<_i23.SignInFormBloc>(
      () => _i23.SignInFormBloc(gh<_i12.IAuthRepository>()));
  gh.factory<_i24.SignUpFormBloc>(
      () => _i24.SignUpFormBloc(gh<_i12.IAuthRepository>()));
  gh.factory<_i25.UserBloc>(() => _i25.UserBloc(gh<_i18.IUserRepository>()));
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(gh<_i12.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i27.InjectableModule {}
