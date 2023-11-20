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

import 'application/auth/auth_bloc.dart' as _i33;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i30;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i31;
import 'application/home/refresh/home_refresh_bloc.dart' as _i7;
import 'application/location/location_bloc.dart' as _i23;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i11;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i8;
import 'application/place/place_bloc.dart' as _i24;
import 'application/profile/profile_bloc.dart' as _i25;
import 'application/riding/riding_actor/riding_actor_bloc.dart' as _i26;
import 'application/riding/riding_detail/riding_detail_bloc.dart' as _i27;
import 'application/riding/riding_form/riding_form_bloc.dart' as _i28;
import 'application/riding/riding_list/riding_list_bloc.dart' as _i29;
import 'application/user/user_bloc.dart' as _i32;
import 'domain/auth/i_auth_repository.dart' as _i13;
import 'domain/location/i_location_repository.dart' as _i15;
import 'domain/place/i_place_repository.dart' as _i17;
import 'domain/riding/i_riding_repository.dart' as _i19;
import 'domain/user/i_user_repository.dart' as _i21;
import 'infrastructure/api/authenticated_http_client.dart' as _i10;
import 'infrastructure/api/core_api.dart' as _i12;
import 'infrastructure/auth/auth_repository.dart' as _i14;
import 'infrastructure/hive/hive_provider.dart' as _i6;
import 'infrastructure/location/location_repository.dart' as _i16;
import 'infrastructure/place/place_repository.dart' as _i18;
import 'infrastructure/riding/riding_repository.dart' as _i20;
import 'infrastructure/user/user_repository.dart' as _i22;
import 'presentation/core/toast/toast_bloc.dart' as _i9;
import 'utils/injectable_module.dart' as _i34;

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
  gh.factory<_i7.HomeRefreshBloc>(() => _i7.HomeRefreshBloc());
  gh.factory<_i8.PermissionActorBloc>(() => _i8.PermissionActorBloc());
  gh.singleton<_i9.ToastBloc>(_i9.ToastBloc());
  gh.lazySingleton<_i10.AuthenticatedHttpClient>(
      () => _i10.AuthenticatedHttpClient(hiveProvider: gh<_i6.HiveProvider>()));
  gh.factory<_i11.CheckPermissionBloc>(
      () => _i11.CheckPermissionBloc(gh<_i6.HiveProvider>()));
  gh.singleton<_i12.CoreApi>(
      _i12.CoreApi(client: gh<_i10.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i13.IAuthRepository>(() => _i14.AuthRepository(
        gh<_i3.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
        gh<_i12.CoreApi>(),
        gh<_i6.HiveProvider>(),
      ));
  gh.lazySingleton<_i15.ILocationRepository>(
      () => _i16.LocationRepository(gh<_i12.CoreApi>()));
  gh.lazySingleton<_i17.IPlaceRepository>(
      () => _i18.PlaceRepository(gh<_i12.CoreApi>()));
  gh.lazySingleton<_i19.IRidingRepository>(
      () => _i20.RidingRepository(gh<_i12.CoreApi>()));
  gh.lazySingleton<_i21.IUserRepository>(
      () => _i22.UserRepository(gh<_i12.CoreApi>()));
  gh.factory<_i23.LocationBloc>(
      () => _i23.LocationBloc(gh<_i15.ILocationRepository>()));
  gh.factory<_i24.PlaceBloc>(() => _i24.PlaceBloc(gh<_i17.IPlaceRepository>()));
  gh.factory<_i25.ProfileBloc>(
      () => _i25.ProfileBloc(gh<_i21.IUserRepository>()));
  gh.factory<_i26.RidingActorBloc>(
      () => _i26.RidingActorBloc(gh<_i19.IRidingRepository>()));
  gh.factory<_i27.RidingDetailBloc>(
      () => _i27.RidingDetailBloc(gh<_i19.IRidingRepository>()));
  gh.factory<_i28.RidingFormBloc>(
      () => _i28.RidingFormBloc(gh<_i19.IRidingRepository>()));
  gh.factory<_i29.RidingListBloc>(
      () => _i29.RidingListBloc(gh<_i19.IRidingRepository>()));
  gh.factory<_i30.SignInFormBloc>(
      () => _i30.SignInFormBloc(gh<_i13.IAuthRepository>()));
  gh.factory<_i31.SignUpFormBloc>(
      () => _i31.SignUpFormBloc(gh<_i13.IAuthRepository>()));
  gh.factory<_i32.UserBloc>(() => _i32.UserBloc(gh<_i21.IUserRepository>()));
  gh.factory<_i33.AuthBloc>(() => _i33.AuthBloc(gh<_i13.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i34.InjectableModule {}
