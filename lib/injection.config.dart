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

import 'application/app_info/app_info_bloc.dart' as _i13;
import 'application/auth/auth_bloc.dart' as _i38;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i35;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i36;
import 'application/home/refresh/home_refresh_bloc.dart' as _i7;
import 'application/location/location_bloc.dart' as _i27;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i15;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i10;
import 'application/place/place_bloc.dart' as _i29;
import 'application/profile/profile_bloc.dart' as _i30;
import 'application/riding/riding_actor/riding_actor_bloc.dart' as _i31;
import 'application/riding/riding_controller/riding_controller_bloc.dart'
    as _i11;
import 'application/riding/riding_detail/riding_detail_bloc.dart' as _i32;
import 'application/riding/riding_form/riding_form_bloc.dart' as _i33;
import 'application/riding/riding_list/riding_list_bloc.dart' as _i34;
import 'application/user/user_bloc.dart' as _i37;
import 'domain/app-info/i_app_info_repository.dart' as _i8;
import 'domain/auth/i_auth_repository.dart' as _i17;
import 'domain/location/i_location_repository.dart' as _i19;
import 'domain/place/i_place_repository.dart' as _i21;
import 'domain/riding/i_riding_repository.dart' as _i23;
import 'domain/user/i_user_repository.dart' as _i25;
import 'infrastructure/api/authenticated_http_client.dart' as _i14;
import 'infrastructure/api/core_api.dart' as _i16;
import 'infrastructure/app-info/app_info_repository.dart' as _i9;
import 'infrastructure/auth/auth_repository.dart' as _i18;
import 'infrastructure/hive/hive_provider.dart' as _i6;
import 'infrastructure/location/location_repository.dart' as _i20;
import 'infrastructure/place/place_repository.dart' as _i22;
import 'infrastructure/riding/riding_repository.dart' as _i24;
import 'infrastructure/user/user_repository.dart' as _i26;
import 'presentation/core/toast/toast_bloc.dart' as _i12;
import 'presentation/riding/listener/map_marker_click_listener.dart' as _i28;
import 'utils/injectable_module.dart' as _i39;

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
  gh.lazySingleton<_i8.IAppInfoRepository>(
      () => _i9.AppInfoRepository(gh<_i4.FirebaseRemoteConfig>()));
  gh.factory<_i10.PermissionActorBloc>(() => _i10.PermissionActorBloc());
  gh.factory<_i11.RidingControllerBloc>(() => _i11.RidingControllerBloc());
  gh.singleton<_i12.ToastBloc>(_i12.ToastBloc());
  gh.factory<_i13.AppInfoBloc>(
      () => _i13.AppInfoBloc(gh<_i8.IAppInfoRepository>()));
  gh.lazySingleton<_i14.AuthenticatedHttpClient>(
      () => _i14.AuthenticatedHttpClient(hiveProvider: gh<_i6.HiveProvider>()));
  gh.factory<_i15.CheckPermissionBloc>(
      () => _i15.CheckPermissionBloc(gh<_i6.HiveProvider>()));
  gh.singleton<_i16.CoreApi>(
      _i16.CoreApi(client: gh<_i14.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i17.IAuthRepository>(() => _i18.AuthRepository(
        gh<_i3.FirebaseAuth>(),
        gh<_i5.GoogleSignIn>(),
        gh<_i16.CoreApi>(),
        gh<_i6.HiveProvider>(),
      ));
  gh.lazySingleton<_i19.ILocationRepository>(
      () => _i20.LocationRepository(gh<_i16.CoreApi>()));
  gh.lazySingleton<_i21.IPlaceRepository>(
      () => _i22.PlaceRepository(gh<_i16.CoreApi>()));
  gh.lazySingleton<_i23.IRidingRepository>(
      () => _i24.RidingRepository(gh<_i16.CoreApi>()));
  gh.lazySingleton<_i25.IUserRepository>(
      () => _i26.UserRepository(gh<_i16.CoreApi>()));
  gh.factory<_i27.LocationBloc>(
      () => _i27.LocationBloc(gh<_i19.ILocationRepository>()));
  gh.factory<_i28.MapMarkerClickListener>(
      () => _i28.MapMarkerClickListener(gh<_i11.RidingControllerBloc>()));
  gh.factory<_i29.PlaceBloc>(() => _i29.PlaceBloc(gh<_i21.IPlaceRepository>()));
  gh.factory<_i30.ProfileBloc>(
      () => _i30.ProfileBloc(gh<_i25.IUserRepository>()));
  gh.factory<_i31.RidingActorBloc>(
      () => _i31.RidingActorBloc(gh<_i23.IRidingRepository>()));
  gh.factory<_i32.RidingDetailBloc>(
      () => _i32.RidingDetailBloc(gh<_i23.IRidingRepository>()));
  gh.factory<_i33.RidingFormBloc>(
      () => _i33.RidingFormBloc(gh<_i23.IRidingRepository>()));
  gh.factory<_i34.RidingListBloc>(
      () => _i34.RidingListBloc(gh<_i23.IRidingRepository>()));
  gh.factory<_i35.SignInFormBloc>(
      () => _i35.SignInFormBloc(gh<_i17.IAuthRepository>()));
  gh.factory<_i36.SignUpFormBloc>(
      () => _i36.SignUpFormBloc(gh<_i17.IAuthRepository>()));
  gh.factory<_i37.UserBloc>(() => _i37.UserBloc(gh<_i25.IUserRepository>()));
  gh.factory<_i38.AuthBloc>(() => _i38.AuthBloc(gh<_i17.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i39.InjectableModule {}
