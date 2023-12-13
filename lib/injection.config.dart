// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_info/app_info_bloc.dart' as _i14;
import 'application/auth/auth_bloc.dart' as _i39;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i36;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i37;
import 'application/draggable/draggable_bloc.dart' as _i3;
import 'application/home/refresh/home_refresh_bloc.dart' as _i8;
import 'application/location/location_bloc.dart' as _i28;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i16;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i11;
import 'application/place/place_bloc.dart' as _i30;
import 'application/profile/profile_bloc.dart' as _i31;
import 'application/riding/riding_actor/riding_actor_bloc.dart' as _i32;
import 'application/riding/riding_controller/riding_controller_bloc.dart'
    as _i12;
import 'application/riding/riding_detail/riding_detail_bloc.dart' as _i33;
import 'application/riding/riding_form/riding_form_bloc.dart' as _i34;
import 'application/riding/riding_list/riding_list_bloc.dart' as _i35;
import 'application/user/user_bloc.dart' as _i38;
import 'domain/app-info/i_app_info_repository.dart' as _i9;
import 'domain/auth/i_auth_repository.dart' as _i18;
import 'domain/location/i_location_repository.dart' as _i20;
import 'domain/place/i_place_repository.dart' as _i22;
import 'domain/riding/i_riding_repository.dart' as _i24;
import 'domain/user/i_user_repository.dart' as _i26;
import 'infrastructure/api/authenticated_http_client.dart' as _i15;
import 'infrastructure/api/core_api.dart' as _i17;
import 'infrastructure/app-info/app_info_repository.dart' as _i10;
import 'infrastructure/auth/auth_repository.dart' as _i19;
import 'infrastructure/hive/hive_provider.dart' as _i7;
import 'infrastructure/location/location_repository.dart' as _i21;
import 'infrastructure/place/place_repository.dart' as _i23;
import 'infrastructure/riding/riding_repository.dart' as _i25;
import 'infrastructure/user/user_repository.dart' as _i27;
import 'presentation/core/toast/toast_bloc.dart' as _i13;
import 'presentation/riding/listener/map_marker_click_listener.dart' as _i29;
import 'utils/injectable_module.dart' as _i40;

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
  gh.factory<_i3.DraggableBloc>(() => _i3.DraggableBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseRemoteConfig>(
      () => injectableModule.remoteConfig);
  gh.lazySingleton<_i6.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.singleton<_i7.HiveProvider>(_i7.HiveProvider());
  gh.factory<_i8.HomeRefreshBloc>(() => _i8.HomeRefreshBloc());
  gh.lazySingleton<_i9.IAppInfoRepository>(
      () => _i10.AppInfoRepository(gh<_i5.FirebaseRemoteConfig>()));
  gh.factory<_i11.PermissionActorBloc>(() => _i11.PermissionActorBloc());
  gh.factory<_i12.RidingControllerBloc>(() => _i12.RidingControllerBloc());
  gh.singleton<_i13.ToastBloc>(_i13.ToastBloc());
  gh.factory<_i14.AppInfoBloc>(
      () => _i14.AppInfoBloc(gh<_i9.IAppInfoRepository>()));
  gh.lazySingleton<_i15.AuthenticatedHttpClient>(
      () => _i15.AuthenticatedHttpClient(hiveProvider: gh<_i7.HiveProvider>()));
  gh.factory<_i16.CheckPermissionBloc>(
      () => _i16.CheckPermissionBloc(gh<_i7.HiveProvider>()));
  gh.singleton<_i17.CoreApi>(
      _i17.CoreApi(client: gh<_i15.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i18.IAuthRepository>(() => _i19.AuthRepository(
        gh<_i4.FirebaseAuth>(),
        gh<_i6.GoogleSignIn>(),
        gh<_i17.CoreApi>(),
        gh<_i7.HiveProvider>(),
      ));
  gh.lazySingleton<_i20.ILocationRepository>(
      () => _i21.LocationRepository(gh<_i17.CoreApi>()));
  gh.lazySingleton<_i22.IPlaceRepository>(
      () => _i23.PlaceRepository(gh<_i17.CoreApi>()));
  gh.lazySingleton<_i24.IRidingRepository>(
      () => _i25.RidingRepository(gh<_i17.CoreApi>()));
  gh.lazySingleton<_i26.IUserRepository>(
      () => _i27.UserRepository(gh<_i17.CoreApi>()));
  gh.factory<_i28.LocationBloc>(
      () => _i28.LocationBloc(gh<_i20.ILocationRepository>()));
  gh.factory<_i29.MapMarkerClickListener>(
      () => _i29.MapMarkerClickListener(gh<_i12.RidingControllerBloc>()));
  gh.factory<_i30.PlaceBloc>(() => _i30.PlaceBloc(gh<_i22.IPlaceRepository>()));
  gh.factory<_i31.ProfileBloc>(
      () => _i31.ProfileBloc(gh<_i26.IUserRepository>()));
  gh.factory<_i32.RidingActorBloc>(
      () => _i32.RidingActorBloc(gh<_i24.IRidingRepository>()));
  gh.factory<_i33.RidingDetailBloc>(
      () => _i33.RidingDetailBloc(gh<_i24.IRidingRepository>()));
  gh.factory<_i34.RidingFormBloc>(
      () => _i34.RidingFormBloc(gh<_i24.IRidingRepository>()));
  gh.factory<_i35.RidingListBloc>(
      () => _i35.RidingListBloc(gh<_i24.IRidingRepository>()));
  gh.factory<_i36.SignInFormBloc>(
      () => _i36.SignInFormBloc(gh<_i18.IAuthRepository>()));
  gh.factory<_i37.SignUpFormBloc>(
      () => _i37.SignUpFormBloc(gh<_i18.IAuthRepository>()));
  gh.factory<_i38.UserBloc>(() => _i38.UserBloc(gh<_i26.IUserRepository>()));
  gh.factory<_i39.AuthBloc>(() => _i39.AuthBloc(gh<_i18.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i40.InjectableModule {}
