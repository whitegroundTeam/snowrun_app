// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i34;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i31;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i32;
import 'application/home/refresh/home_refresh_bloc.dart' as _i7;
import 'application/location/location_bloc.dart' as _i24;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i12;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i8;
import 'application/place/place_bloc.dart' as _i25;
import 'application/profile/profile_bloc.dart' as _i26;
import 'application/riding/riding_actor/riding_actor_bloc.dart' as _i27;
import 'application/riding/riding_controller/riding_controller_bloc.dart'
    as _i9;
import 'application/riding/riding_detail/riding_detail_bloc.dart' as _i28;
import 'application/riding/riding_form/riding_form_bloc.dart' as _i29;
import 'application/riding/riding_list/riding_list_bloc.dart' as _i30;
import 'application/user/user_bloc.dart' as _i33;
import 'domain/auth/i_auth_repository.dart' as _i14;
import 'domain/location/i_location_repository.dart' as _i16;
import 'domain/place/i_place_repository.dart' as _i18;
import 'domain/riding/i_riding_repository.dart' as _i20;
import 'domain/user/i_user_repository.dart' as _i22;
import 'infrastructure/api/authenticated_http_client.dart' as _i11;
import 'infrastructure/api/core_api.dart' as _i13;
import 'infrastructure/auth/auth_repository.dart' as _i15;
import 'infrastructure/hive/hive_provider.dart' as _i6;
import 'infrastructure/location/location_repository.dart' as _i17;
import 'infrastructure/place/place_repository.dart' as _i19;
import 'infrastructure/riding/riding_repository.dart' as _i21;
import 'infrastructure/user/user_repository.dart' as _i23;
import 'presentation/core/toast/toast_bloc.dart' as _i10;
import 'utils/injectable_module.dart' as _i35;

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
  gh.factory<_i9.RidingControllerBloc>(() => _i9.RidingControllerBloc());
  gh.singleton<_i10.ToastBloc>(_i10.ToastBloc());
  gh.lazySingleton<_i11.AuthenticatedHttpClient>(
      () => _i11.AuthenticatedHttpClient(hiveProvider: gh<_i6.HiveProvider>()));
  gh.factory<_i12.CheckPermissionBloc>(
      () => _i12.CheckPermissionBloc(gh<_i6.HiveProvider>()));
  gh.singleton<_i13.CoreApi>(
      _i13.CoreApi(client: gh<_i11.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i14.IAuthRepository>(() => _i15.AuthRepository(
        gh<_i3.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
        gh<_i13.CoreApi>(),
        gh<_i6.HiveProvider>(),
      ));
  gh.lazySingleton<_i16.ILocationRepository>(
      () => _i17.LocationRepository(gh<_i13.CoreApi>()));
  gh.lazySingleton<_i18.IPlaceRepository>(
      () => _i19.PlaceRepository(gh<_i13.CoreApi>()));
  gh.lazySingleton<_i20.IRidingRepository>(
      () => _i21.RidingRepository(gh<_i13.CoreApi>()));
  gh.lazySingleton<_i22.IUserRepository>(
      () => _i23.UserRepository(gh<_i13.CoreApi>()));
  gh.factory<_i24.LocationBloc>(
      () => _i24.LocationBloc(gh<_i16.ILocationRepository>()));
  gh.factory<_i25.PlaceBloc>(() => _i25.PlaceBloc(gh<_i18.IPlaceRepository>()));
  gh.factory<_i26.ProfileBloc>(
      () => _i26.ProfileBloc(gh<_i22.IUserRepository>()));
  gh.factory<_i27.RidingActorBloc>(
      () => _i27.RidingActorBloc(gh<_i20.IRidingRepository>()));
  gh.factory<_i28.RidingDetailBloc>(
      () => _i28.RidingDetailBloc(gh<_i20.IRidingRepository>()));
  gh.factory<_i29.RidingFormBloc>(
      () => _i29.RidingFormBloc(gh<_i20.IRidingRepository>()));
  gh.factory<_i30.RidingListBloc>(
      () => _i30.RidingListBloc(gh<_i20.IRidingRepository>()));
  gh.factory<_i31.SignInFormBloc>(
      () => _i31.SignInFormBloc(gh<_i14.IAuthRepository>()));
  gh.factory<_i32.SignUpFormBloc>(
      () => _i32.SignUpFormBloc(gh<_i14.IAuthRepository>()));
  gh.factory<_i33.UserBloc>(() => _i33.UserBloc(gh<_i22.IUserRepository>()));
  gh.factory<_i34.AuthBloc>(() => _i34.AuthBloc(gh<_i14.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i35.InjectableModule {}
