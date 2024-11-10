import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:doortoout/domain/rental/model/rental.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
import 'package:doortoout/presentation/invite_code/input_invite_code_page.dart';
import 'package:doortoout/presentation/landing/landing_page.dart';
import 'package:doortoout/presentation/order/create_rental/accessory_equipment_rental/accessory_equipment_rental_page.dart';
import 'package:doortoout/presentation/order/create_rental/apparel_equipment_rental/apparel_equipment_rental_page.dart';
import 'package:doortoout/presentation/order/create_rental/create_rental_page.dart';
import 'package:doortoout/presentation/order/create_rental/customer_rental_info_page/customer_rental_info_page.dart';
import 'package:doortoout/presentation/order/create_rental/main_equipment_rental/main_equipment_rental_page.dart';
import 'package:doortoout/presentation/order/create_rental/select_rental_option_page.dart';
import 'package:doortoout/presentation/order/lesson_pass_order/lesson_pass_order_page.dart';
import 'package:doortoout/presentation/order/order_check/order_check_page.dart';
import 'package:doortoout/presentation/order/order_complete/order_complete_page.dart';
import 'package:doortoout/presentation/order/order_history/history_page,dart.dart';
import 'package:doortoout/presentation/order/order_history/order_history_detail_page.dart';
import 'package:doortoout/presentation/order/order_history/order_history_list_page.dart';
import 'package:doortoout/presentation/order/order_page.dart';
import 'package:doortoout/presentation/order/recommanded_products/recommanded_products_page.dart';
import 'package:doortoout/presentation/order/rental/rental_list_page.dart';
import 'package:doortoout/presentation/order/select_activity_center/select_activity_center_page.dart';
import 'package:doortoout/presentation/order/terms_and_notes/terms_and_notes_page.dart';
import 'package:doortoout/presentation/order/ticket_order/select_ticket_page.dart';
import 'package:doortoout/presentation/riding/riding_room_page.dart';
import 'package:doortoout/presentation/auth/email_sign_in_page.dart';
import 'package:doortoout/presentation/auth/email_sign_up_page.dart';
import 'package:doortoout/presentation/core/webview/common_webview.dart';
import 'package:doortoout/presentation/edit_profile_image_page/edit_profile_image_page.dart';
import 'package:doortoout/presentation/home/home_page.dart';
import 'package:doortoout/presentation/auth/sign_in_page.dart';
import 'package:doortoout/presentation/permission/request_att_permission_page.dart';
import 'package:doortoout/presentation/permission/request_location_permission_page.dart';
import 'package:doortoout/presentation/permission/request_notification_permission_page.dart';
import 'package:doortoout/presentation/record/recording_page.dart';
import 'package:doortoout/presentation/record/result_page.dart';
import 'package:doortoout/presentation/riding/riding_dashboard_page.dart';
import 'package:doortoout/presentation/setting/setting_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/landing',
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, bool?>? extra = state.extra as Map<String, bool?>?;
        final bool needRefresh = extra?['needRefresh'] ?? false;
        return HomePage(
          needRefresh: needRefresh,
        );
      },
    ),
    GoRoute(
      path: '/editProfileImage',
      builder: (BuildContext context, GoRouterState state) {
        return const EditProfileImagePage();
      },
    ),
    GoRoute(
      path: '/landing',
      builder: (BuildContext context, GoRouterState state) {
        return const LandingPage();
      },
    ),
    GoRoute(
      path: '/recording',
      builder: (BuildContext context, GoRouterState state) {
        return const RecordingPage();
      },
    ),
    GoRoute(
      path: '/ridingRoom',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, int> extra = state.extra as Map<String, int>;
        final int ridingRoomId = extra['ridingRoomId'] ?? -1;
        return RidingRoomPage(ridingRoomId: ridingRoomId);
      },
    ),
    GoRoute(
      path: '/ridingDashboard',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, int> extra = state.extra as Map<String, int>;
        final int ridingRoomId = extra['ridingRoomId'] ?? -1;
        return RidingDashboardPage(
          ridingRoomId: ridingRoomId,
        );
      },
    ),
    GoRoute(
      path: '/result',
      builder: (BuildContext context, GoRouterState state) {
        return const ResultPage();
      },
    ),
    GoRoute(
      path: '/signIn',
      builder: (BuildContext context, GoRouterState state) {
        return const SignInPage();
      },
    ),
    GoRoute(
      path: '/emailSignInPage',
      builder: (BuildContext context, GoRouterState state) {
        return const EmailSignInPage();
      },
    ),
    GoRoute(
      path: '/signUp',
      builder: (BuildContext context, GoRouterState state) {
        return const EmailSignUpPage();
      },
    ),
    GoRoute(
      path: '/setting',
      builder: (BuildContext context, GoRouterState state) {
        return const SettingPage();
      },
    ),
    GoRoute(
      path: '/attPermission',
      builder: (BuildContext context, GoRouterState state) {
        return const RequestAttPermissionPage();
      },
    ),
    GoRoute(
      path: '/locationPermission',
      builder: (BuildContext context, GoRouterState state) {
        return const RequestLocationPermissionPage();
      },
    ),
    GoRoute(
      path: '/notificationPermission',
      builder: (BuildContext context, GoRouterState state) {
        return const RequestNotificationPermissionPage();
      },
    ),
    GoRoute(
      path: '/inputInviteCodes',
      builder: (BuildContext context, GoRouterState state) {
        return const InputInviteCodePage();
      },
    ),
    GoRoute(
      path: '/webview',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, String> extra = state.extra as Map<String, String>;
        final String url = extra['url'] ?? "";
        final String? title = extra['title'];
        return CommonWebViewPage(url: url, title: title);
      },
    ),

    /// RENTAL & ORDER
    GoRoute(
      path: '/order',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderPage();
      },
    ),
    GoRoute(
      path: '/rental-list',
      builder: (BuildContext context, GoRouterState state) {
        return const RentalListPage();
      },
    ),
    GoRoute(
      path: '/create-rental',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, dynamic>? extra =
        state.extra as Map<String, dynamic>?;
        final Rental? rental = extra?['rental'] as Rental?;
        return CreateRentalPage(
          rental: rental,
        );
      },
    ),
    GoRoute(
      path: '/accessory-equipment-rental',
      builder: (BuildContext context, GoRouterState state) {
        return const AccessoryEquipmentRentalPage();
      },
    ),
    GoRoute(
      path: '/apparel-equipment-rental',
      builder: (BuildContext context, GoRouterState state) {
        return const ApparelEquipmentRentalPage();
      },
    ),
    GoRoute(
      path: '/lesson-pass-order',
      builder: (BuildContext context, GoRouterState state) {
        return const LessonPassOrderPage();
      },
    ),
    GoRoute(
      path: '/select-rental-option',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, dynamic>? extra =
        state.extra as Map<String, dynamic>?;
        final RentalShopProduct? rentalShopProduct =
        extra?['rentalShopProduct'] as RentalShopProduct?;
        return SelectRentalOptionPage(rentalShopProduct: rentalShopProduct);
      },
    ),
    GoRoute(
      path: '/customer-rental-info',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, dynamic>? extra =
        state.extra as Map<String, dynamic>?;
        final String? representativePhoneNumber =
        extra?['representativePhoneNumber'] as String?;
        final String? representativeEmail =
        extra?['representativeEmail'] as String?;
        return CustomerRentalInfoPage(
          representativePhoneNumber: representativePhoneNumber,
          representativeEmail: representativeEmail,
        );
      },
    ),
    GoRoute(
      path: '/main-equipment-rental',
      builder: (BuildContext context, GoRouterState state) {
        return const MainEquipmentRentalPage();
      },
    ),
    GoRoute(
      path: '/order-check',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderCheckPage();
      },
    ),
    GoRoute(
      path: '/order-complete',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderCompletePage();
      },
    ),
    GoRoute(
      path: '/history',
      builder: (BuildContext context, GoRouterState state) {
        return const HistoryPage();
      },
    ),
    GoRoute(
      path: '/order-history-detail',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderHistoryDetailPage();
      },
    ),

    GoRoute(
      path: '/order-history-list',
      builder: (BuildContext context, GoRouterState state) {
        return const OrderHistoryListPage();
      },
    ),

    GoRoute(
      path: '/recommanded-products',
      builder: (BuildContext context, GoRouterState state) {
        return const RecommandedProductsPage();
      },
    ),
    GoRoute(
      path: '/select-activity-center',
      builder: (BuildContext context, GoRouterState state) {
        return const SelectActivityCenterPage();
      },
    ),
    GoRoute(
      path: '/terms-and-notes',
      builder: (BuildContext context, GoRouterState state) {
        return const TermsAndNotesPage();
      },
    ),
    GoRoute(
      path: '/select-ticket',
      builder: (BuildContext context, GoRouterState state) {
        final Map<String, dynamic>? extra =
        state.extra as Map<String, dynamic>?;
        final Rental? rental = extra?['rental'] as Rental?;
        return SelectTicketPage(
          rental: rental,
        );
      },
    ),
  ],
);
