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

import 'application/auth/auth_bloc.dart' as _i24;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i21;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i22;
import 'application/location/location_bloc.dart' as _i19;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i9;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i6;
import 'application/place/place_bloc.dart' as _i20;
import 'application/user/user_bloc.dart' as _i23;
import 'domain/auth/i_auth_repository.dart' as _i11;
import 'domain/location/i_location_repository.dart' as _i13;
import 'domain/place/i_place_repository.dart' as _i15;
import 'domain/user/i_user_repository.dart' as _i17;
import 'infrastructure/api/authenticated_http_client.dart' as _i8;
import 'infrastructure/api/core_api.dart' as _i10;
import 'infrastructure/auth/auth_repository.dart' as _i12;
import 'infrastructure/hive/hive_provider.dart' as _i5;
import 'infrastructure/location/location_repository.dart' as _i14;
import 'infrastructure/place/place_repository.dart' as _i16;
import 'infrastructure/user/user_repository.dart' as _i18;
import 'presentation/core/toast/toast_bloc.dart' as _i7;
import 'utils/injectable_module.dart' as _i25;

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
  gh.factory<_i6.PermissionActorBloc>(() => _i6.PermissionActorBloc());
  gh.singleton<_i7.ToastBloc>(_i7.ToastBloc());
  gh.lazySingleton<_i8.AuthenticatedHttpClient>(
      () => _i8.AuthenticatedHttpClient(hiveProvider: gh<_i5.HiveProvider>()));
  gh.factory<_i9.CheckPermissionBloc>(
      () => _i9.CheckPermissionBloc(gh<_i5.HiveProvider>()));
  gh.singleton<_i10.CoreApi>(
      _i10.CoreApi(client: gh<_i8.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i11.IAuthRepository>(() => _i12.AuthRepository(
        gh<_i3.FirebaseAuth>(),
        gh<_i4.GoogleSignIn>(),
        gh<_i10.CoreApi>(),
      ));
  gh.lazySingleton<_i13.ILocationRepository>(
      () => _i14.LocationRepository(gh<_i10.CoreApi>()));
  gh.lazySingleton<_i15.IPlaceRepository>(
      () => _i16.PlaceRepository(gh<_i10.CoreApi>()));
  gh.lazySingleton<_i17.IUserRepository>(
      () => _i18.UserRepository(gh<_i10.CoreApi>()));
  gh.factory<_i19.LocationBloc>(
      () => _i19.LocationBloc(gh<_i13.ILocationRepository>()));
  gh.factory<_i20.PlaceBloc>(() => _i20.PlaceBloc(gh<_i15.IPlaceRepository>()));
  gh.factory<_i21.SignInFormBloc>(
      () => _i21.SignInFormBloc(gh<_i11.IAuthRepository>()));
  gh.factory<_i22.SignUpFormBloc>(
      () => _i22.SignUpFormBloc(gh<_i11.IAuthRepository>()));
  gh.factory<_i23.UserBloc>(() => _i23.UserBloc(gh<_i17.IUserRepository>()));
  gh.factory<_i24.AuthBloc>(() => _i24.AuthBloc(gh<_i11.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i25.InjectableModule {}
