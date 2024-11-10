// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:firebase_remote_config/firebase_remote_config.dart' as _i627;
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_sign_in/google_sign_in.dart' as _i116;
import 'package:injectable/injectable.dart' as _i526;

import 'application/app_info/app_info_bloc.dart' as _i352;
import 'application/auth/auth_bloc.dart' as _i438;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i966;
import 'application/auth/sign_up_form/sign_up_form_bloc.dart' as _i631;
import 'application/body_spec/body_spec_bloc.dart' as _i291;
import 'application/cart/cart_bloc.dart' as _i522;
import 'application/core/select_button/select_button_bloc.dart' as _i152;
import 'application/draggable/draggable_bloc.dart' as _i43;
import 'application/home/refresh/home_refresh_bloc.dart' as _i117;
import 'application/location/location_bloc.dart' as _i988;
import 'application/order/order_bloc.dart' as _i558;
import 'application/permission/check_permission/check_permission_bloc.dart'
    as _i58;
import 'application/permission/permission_actor/permission_actor_bloc.dart'
    as _i1002;
import 'application/place/place_bloc.dart' as _i945;
import 'application/profile/profile_bloc.dart' as _i11;
import 'application/rental/actor/rental_actor_bloc.dart' as _i32;
import 'application/rental/actor/rental_option_actor_bloc.dart' as _i130;
import 'application/rental_shop/rental_shop_bloc.dart' as _i119;
import 'application/riding/riding_actor/riding_actor_bloc.dart' as _i901;
import 'application/riding/riding_controller/riding_controller_bloc.dart'
    as _i346;
import 'application/riding/riding_detail/riding_detail_bloc.dart' as _i721;
import 'application/riding/riding_form/riding_form_bloc.dart' as _i671;
import 'application/riding/riding_list/riding_list_bloc.dart' as _i205;
import 'application/time_ticket/time_ticket_actor_bloc.dart' as _i469;
import 'application/user/user_bloc.dart' as _i111;
import 'domain/app-info/i_app_info_repository.dart' as _i194;
import 'domain/auth/i_auth_repository.dart' as _i1023;
import 'domain/location/i_location_repository.dart' as _i380;
import 'domain/place/i_place_repository.dart' as _i474;
import 'domain/rental_shop/i_rental_shop_repository.dart' as _i7;
import 'domain/riding/i_riding_repository.dart' as _i609;
import 'domain/user/i_user_repository.dart' as _i602;
import 'infrastructure/api/authenticated_http_client.dart' as _i217;
import 'infrastructure/api/core_api.dart' as _i998;
import 'infrastructure/app-info/app_info_repository.dart' as _i525;
import 'infrastructure/auth/auth_repository.dart' as _i886;
import 'infrastructure/hive/hive_provider.dart' as _i840;
import 'infrastructure/location/location_repository.dart' as _i615;
import 'infrastructure/place/place_repository.dart' as _i620;
import 'infrastructure/rental_shop/rental_shop_repository.dart' as _i903;
import 'infrastructure/riding/riding_repository.dart' as _i794;
import 'infrastructure/user/user_repository.dart' as _i431;
import 'presentation/core/toast/toast_bloc.dart' as _i1072;
import 'presentation/riding/listener/map_marker_click_listener.dart' as _i851;
import 'utils/injectable_module.dart' as _i563;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.factory<_i558.OrderBloc>(() => _i558.OrderBloc());
  gh.factory<_i117.HomeRefreshBloc>(() => _i117.HomeRefreshBloc());
  gh.factory<_i32.RentalActorBloc>(() => _i32.RentalActorBloc());
  gh.factory<_i130.RentalOptionActorBloc>(() => _i130.RentalOptionActorBloc());
  gh.factory<_i152.SelectButtonBloc>(() => _i152.SelectButtonBloc());
  gh.factory<_i291.BodySpecBloc>(() => _i291.BodySpecBloc());
  gh.factory<_i346.RidingControllerBloc>(() => _i346.RidingControllerBloc());
  gh.factory<_i43.DraggableBloc>(() => _i43.DraggableBloc());
  gh.factory<_i522.CartBloc>(() => _i522.CartBloc());
  gh.factory<_i1002.PermissionActorBloc>(() => _i1002.PermissionActorBloc());
  gh.singleton<_i840.HiveProvider>(() => _i840.HiveProvider());
  gh.singleton<_i1072.ToastBloc>(() => _i1072.ToastBloc());
  gh.lazySingleton<_i116.GoogleSignIn>(() => injectableModule.googleSignIn);
  gh.lazySingleton<_i59.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i627.FirebaseRemoteConfig>(
      () => injectableModule.remoteConfig);
  gh.factory<_i851.MapMarkerClickListener>(
      () => _i851.MapMarkerClickListener(gh<_i346.RidingControllerBloc>()));
  gh.factory<_i58.CheckPermissionBloc>(
      () => _i58.CheckPermissionBloc(gh<_i840.HiveProvider>()));
  gh.lazySingleton<_i194.IAppInfoRepository>(
      () => _i525.AppInfoRepository(gh<_i627.FirebaseRemoteConfig>()));
  gh.factory<_i352.AppInfoBloc>(
      () => _i352.AppInfoBloc(gh<_i194.IAppInfoRepository>()));
  gh.lazySingleton<_i217.AuthenticatedHttpClient>(() =>
      _i217.AuthenticatedHttpClient(hiveProvider: gh<_i840.HiveProvider>()));
  gh.singleton<_i998.CoreApi>(
      () => _i998.CoreApi(client: gh<_i217.AuthenticatedHttpClient>()));
  gh.lazySingleton<_i609.IRidingRepository>(
      () => _i794.RidingRepository(gh<_i998.CoreApi>()));
  gh.lazySingleton<_i7.IRentalShopRepository>(
      () => _i903.RentalShopRepository(gh<_i998.CoreApi>()));
  gh.lazySingleton<_i474.IPlaceRepository>(
      () => _i620.PlaceRepository(gh<_i998.CoreApi>()));
  gh.lazySingleton<_i602.IUserRepository>(
      () => _i431.UserRepository(gh<_i998.CoreApi>()));
  gh.lazySingleton<_i380.ILocationRepository>(
      () => _i615.LocationRepository(gh<_i998.CoreApi>()));
  gh.factory<_i205.RidingListBloc>(
      () => _i205.RidingListBloc(gh<_i609.IRidingRepository>()));
  gh.factory<_i721.RidingDetailBloc>(
      () => _i721.RidingDetailBloc(gh<_i609.IRidingRepository>()));
  gh.factory<_i901.RidingActorBloc>(
      () => _i901.RidingActorBloc(gh<_i609.IRidingRepository>()));
  gh.factory<_i671.RidingFormBloc>(
      () => _i671.RidingFormBloc(gh<_i609.IRidingRepository>()));
  gh.factory<_i111.UserBloc>(() => _i111.UserBloc(gh<_i602.IUserRepository>()));
  gh.factory<_i11.ProfileBloc>(
      () => _i11.ProfileBloc(gh<_i602.IUserRepository>()));
  gh.factory<_i988.LocationBloc>(
      () => _i988.LocationBloc(gh<_i380.ILocationRepository>()));
  gh.factory<_i945.PlaceBloc>(
      () => _i945.PlaceBloc(gh<_i474.IPlaceRepository>()));
  gh.factory<_i469.TimeTicketActorBloc>(
      () => _i469.TimeTicketActorBloc(gh<_i7.IRentalShopRepository>()));
  gh.factory<_i119.RentalShopBloc>(
      () => _i119.RentalShopBloc(gh<_i7.IRentalShopRepository>()));
  gh.lazySingleton<_i1023.IAuthRepository>(() => _i886.AuthRepository(
        gh<_i59.FirebaseAuth>(),
        gh<_i116.GoogleSignIn>(),
        gh<_i998.CoreApi>(),
        gh<_i840.HiveProvider>(),
      ));
  gh.factory<_i438.AuthBloc>(
      () => _i438.AuthBloc(gh<_i1023.IAuthRepository>()));
  gh.factory<_i966.SignInFormBloc>(
      () => _i966.SignInFormBloc(gh<_i1023.IAuthRepository>()));
  gh.factory<_i631.SignUpFormBloc>(
      () => _i631.SignUpFormBloc(gh<_i1023.IAuthRepository>()));
  return getIt;
}

class _$InjectableModule extends _i563.InjectableModule {}
