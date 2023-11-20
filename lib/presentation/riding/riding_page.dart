import 'dart:async';
import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/application/riding/riding_detail/riding_detail_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';
import 'package:snowrun_app/presentation/riding/riding_dashboard_page.dart';
import 'package:snowrun_app/presentation/share/share_button.dart';

class RidingPage extends StatefulWidget {
  final int ridingRoomId;

  const RidingPage({
    super.key,
    required this.ridingRoomId,
  });

  @override
  State createState() => RidingPageState();

  static pushRidingPage(BuildContext context, int ridingRoomId,
      {Function? onResult}) {
    context.push(
      '/riding',
      extra: {
        'ridingRoomId': ridingRoomId,
      },
    ).then((value) => onResult?.call());
  }
}

class RidingPageState extends State<RidingPage> {
  final _locationBloc = getIt<LocationBloc>();
  final _ridingDetailBloc = getIt<RidingDetailBloc>();
  final _ridingActorBloc = getIt<RidingActorBloc>();

  Timer? _timer;

  MapboxMap? mapboxMap;
  PointAnnotation? pointAnnotation;
  PointAnnotationManager? pointAnnotationManager;
  bool isCreatedMap = false;

  RidingPlayer? selectedRidingPlayer;
  bool isIos = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isIOS) {
      isIos = true;
    }

    // _timer =
    //     Timer.periodic(const Duration(seconds: 10), (Timer t) => _getUsers());

    Future.delayed(const Duration(milliseconds: 1000), () {
      _addTestMarker();
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const topOfBottomAreaHeight = 56.0;
    const bottomDividerHeight = 0.5;
    const bottomOfBottomAreaHeight = 76.0;
    const bottomAreaHeight =
        topOfBottomAreaHeight + bottomDividerHeight + bottomOfBottomAreaHeight;
    const mapViewBottomPadding = -12.0;

    return MultiBlocProvider(
      providers: [
        BlocProvider<RidingDetailBloc>(
          create: (context) => _ridingDetailBloc
            ..add(RidingDetailEvent.getRidingRoom(widget.ridingRoomId)),
        ),
        BlocProvider<RidingActorBloc>(
          create: (context) => _ridingActorBloc,
        ),
        // BlocProvider<UserBloc>(create: (context) => context.read<UserBloc>()),
        BlocProvider<LocationBloc>(create: (context) => _locationBloc
            //   ..add(const LocationEvent.getCurrentLocation()),
            ),
        BlocListener<LocationBloc, LocationState>(
          listener: (context, state) async {
            if (state.status == LocationStatus.successGetCurrentLocation) {
              context.read<UserBloc>().add(UserEvent.updateCurrentLocation(
                  state.userLocation.lat.getOrCrash(),
                  state.userLocation.lng.getOrCrash()));
            }
          },
        ),
        BlocListener<RidingDetailBloc, RidingDetailState>(
          listener: (context, state) async {
            if (state.status == DefaultStatus.success) {
              updateMarkers(state.ridingRoom?.players.getOrCrash() ?? []);
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          bloc: context.read<UserBloc>(),
          listener: (context, state) async {
            // await updateMarkers(state.users);
            if (state.status == UserStatus.successGetUsers) {
            } else if (state.status ==
                UserStatus.successUpdateCurrentLocation) {
              // _userBloc.add(const UserEvent.getUsers());
              _ridingDetailBloc
                  .add(RidingDetailEvent.getRidingRoom(widget.ridingRoomId));
            }
          },
        ),
      ],
      child: BlocBuilder<RidingActorBloc, RidingActorState>(
        builder: (context, state) {
          return BlocBuilder<RidingDetailBloc, RidingDetailState>(
            builder: (context, state) {
              final ridingRoom = state.ridingRoom;
              String ridingRoomName = ridingRoom?.name.getOrCrash() ?? "";
              selectedRidingPlayer = ridingRoom?.players
                  .getOrCrash()
                  .firstWhere((player) =>
                      player.userId.getOrCrash() ==
                      context.read<AuthBloc>().state.user?.id.getOrCrash());

              mapboxMap?.setCamera(CameraOptions(
                anchor: ScreenCoordinate(x: 0, y: 0),
                zoom: 14,
                center: Point(
                  coordinates: Position(
                    selectedRidingPlayer?.location?.lng.getOrCrash() ??
                        128.6803521,
                    selectedRidingPlayer?.location?.lat.getOrCrash() ??
                        37.6390034,
                  ),
                ).toJson(),
              ));

              return Scaffold(
                body: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: bottomAreaHeight + mapViewBottomPadding,
                      child: MapWidget(
                        key: const ValueKey('mapWidget'),
                        resourceOptions: ResourceOptions(
                          accessToken: dotenv.env['MAPBOX_ACCESS_TOKEN'] ?? "",
                        ),
                        onMapCreated: _onMapCreated,
                        styleUri: "mapbox://styles/mapbox/outdoors-v12",
                        cameraOptions: CameraOptions(
                          anchor: ScreenCoordinate(x: 0, y: 0),
                          zoom: 14,
                          center: Point(
                            coordinates: Position(
                              selectedRidingPlayer?.location?.lng
                                      .getOrCrash() ??
                                  128.6803521,
                              selectedRidingPlayer?.location?.lat
                                      .getOrCrash() ??
                                  37.6390034,
                            ),
                          ).toJson(),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 8,
                      bottom: bottomAreaHeight + 16,
                      child: CommonDetector(
                        onTap: () {
                          _updateUserLocation();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                AppStyle.secondaryBackground.withOpacity(0.95),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.all(12),
                          child: Image.asset(
                            'assets/webp/refresh.webp',
                            color: AppStyle.white,
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          color: AppStyle.secondaryBackground,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            topLeft: Radius.circular(12),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: topOfBottomAreaHeight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    CommonDetector(
                                      onTap: () {
                                        RidingDashboardPage
                                            .pushRidingDashboardPage(context);
                                      },
                                      child: Center(
                                        child: Hero(
                                          tag: "ridingRoomName",
                                          child: TitleText(
                                            title: ridingRoomName.length > 15
                                                ? "${ridingRoomName.substring(0, 15)}..."
                                                : ridingRoomName,
                                            fontSize: 16,
                                            color: AppStyle.white,
                                            fontWeight: FontWeight.w500,
                                            maxLine: 1,
                                            textOverFlow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CommonDetector(
                                      onTap: () {
                                        RidingDashboardPage
                                            .pushRidingDashboardPage(context);
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 8,
                                        ),
                                        child: Image.asset(
                                          'assets/webp/setting.webp',
                                          color: AppStyle.white,
                                          width: 24,
                                          height: 24,
                                        ),
                                      ),
                                    ),
                                    const Spacer(),
                                    CommonDetector(
                                      onTap: () {
                                        RidingDashboardPage
                                            .pushRidingDashboardPage(context);
                                      },
                                      child: PlayersCountsWidget(
                                        players:
                                            ridingRoom?.players.getOrCrash() ??
                                                [],
                                        maxPlayersCount: ridingRoom?.players
                                                .getOrCrash()
                                                .length ??
                                            0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(
                                height: bottomDividerHeight,
                                color: AppStyle.line,
                              ),
                              SizedBox(
                                height: bottomOfBottomAreaHeight,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    CommonNetworkImage(
                                        height: 56,
                                        width: 56,
                                        imageBackgroundColor:
                                            AppStyle.transparent,
                                        imageUrl: selectedRidingPlayer
                                                ?.profileImage
                                                .getOrCrash() ??
                                            ""),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          TitleText(
                                            title: selectedRidingPlayer
                                                    ?.nickname
                                                    .getOrCrash() ??
                                                "",
                                            fontSize: 20,
                                            color: AppStyle.white,
                                            fontWeight: FontWeight.w700,
                                            maxLine: 1,
                                            textOverFlow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          TitleText(
                                            title: getTimeDifferenceMessage(
                                                selectedRidingPlayer
                                                    ?.locationUpdatedAt
                                                    .getOrCrash()),
                                            fontSize: 16,
                                            color: AppStyle.secondaryTextColor,
                                            fontWeight: FontWeight.w500,
                                            maxLine: 1,
                                            textOverFlow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Container(
                                      width: 64,
                                      height: 56,
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xFFFFB74D),
                                            Color(0xFFF57C00),
                                            Color(0xFFEF6C00),
                                          ],
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(8)),
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.2),
                                            blurRadius: 15,
                                            offset: const Offset(0, 7),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          const SizedBox(
                                            height: 4,
                                          ),
                                          Expanded(
                                            child: Image.asset(
                                              'assets/webp/hey.webp',
                                              // width: 32,
                                              // height: 32,
                                            ),
                                          ),
                                          const TitleText(
                                            title: "부르기",
                                            fontSize: 12,
                                            color: AppStyle.white,
                                            fontWeight: FontWeight.w700,
                                          ),
                                          const SizedBox(
                                            height: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).padding.top + 12,
                      left: 0,
                      right: 0,
                      child: Row(
                        children: [
                          CommonDetector(
                            onTap: () {
                              context.pop();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              margin: const EdgeInsets.only(
                                left: 16,
                                right: 12,
                                bottom: 4,
                                top: 4,
                              ),
                              decoration: BoxDecoration(
                                  color: AppStyle.secondaryBackground
                                      .withOpacity(0.95),
                                  shape: BoxShape.circle),
                              child: Image.asset(
                                'assets/webp/arrow_left.webp',
                                color: AppStyle.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          const ShareButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  // _buildMember(
  //     String avatarPath, String name, Color borderColor, String authToken) {
  //   return Container(
  //     margin: const EdgeInsets.symmetric(vertical: 8),
  //     child: CommonDetector(
  //       onTap: () async {
  //         setState(() {
  //           selectedColor = borderColor;
  //         });
  //         hiveProvider.setAuthToken(authToken);
  //         if (!await Geolocator.isLocationServiceEnabled()) {
  //           _showOpenSettingDialog();
  //         }
  //
  //         final checkedPermission = await Geolocator.requestPermission();
  //         if (checkedPermission == LocationPermission.always ||
  //             checkedPermission == LocationPermission.whileInUse) {
  //           if (!mounted) return;
  //           context.push("/");
  //         } else {
  //           _showOpenSettingDialog();
  //         }
  //       },
  //       child: Container(
  //         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
  //         width: MediaQuery.of(context).size.width,
  //         margin: const EdgeInsets.symmetric(horizontal: 24),
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(12),
  //           border: Border.all(color: borderColor, width: 8.0),
  //         ),
  //         child: Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             Image.asset(
  //               avatarPath,
  //               width: 72,
  //               height: 72,
  //             ),
  //             const SizedBox(
  //               width: 16,
  //             ),
  //             Expanded(
  //               child: Center(
  //                 child: Text(
  //                   name,
  //                   style: const TextStyle(
  //                       fontSize: 36, fontWeight: FontWeight.bold),
  //                 ),
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // _showOpenSettingDialog() async {
  //   if (!mounted) return;
  //   await showCommonDialog(context,
  //       buttonText: "설정으로 이동",
  //       title: "현재 위치에서 주소를 검색하려면 위치 권한을 활성화 해야합니다.",
  //       negativeButtonText: "취소", onPressedButton: () async {
  //         AppSettings.openAppSettings(type: AppSettingsType.location);
  //         showToast(
  //           "위치 권한 허용 후 다시 시도해주세요.",
  //         );
  //
  //         if (!mounted) return;
  //         context.pop();
  //       }, onPressedNegativeButton: () {
  //         context.pop();
  //       });
  // }

  void _updateUserLocation() {
    _checkLocationPermission();
  }

  _onMapCreated(MapboxMap mapboxMap) {
    this.mapboxMap = mapboxMap;
    mapboxMap.scaleBar.updateSettings(ScaleBarSettings(enabled: false));
    mapboxMap.logo.updateSettings(
      LogoSettings(
        marginBottom: 48,
      ),
    );
    mapboxMap.attribution.updateSettings(
      AttributionSettings(
        marginBottom: 48,
      ),
    );

    mapboxMap.annotations.createPointAnnotationManager().then((value) async {
      pointAnnotationManager = value;
    });
    mapboxMap.compass.updateSettings(CompassSettings(
        position: OrnamentPosition.BOTTOM_LEFT, marginBottom: 96));
    setState(() {
      isCreatedMap = true;
    });
  }

  updateMarkers(List<RidingPlayer> ridingPlayers) async {
    if (!isCreatedMap) {
      return;
    }
    double adjustedIconSize = adjustIconSizeForDevice(context, 0.1);
    pointAnnotationManager?.deleteAll();
    for (var ridingPlayer in ridingPlayers) {
      String imageUrl = ridingPlayer.profileImage.getOrCrash();
      Uint8List avatarData = await fetchImageAsUint8List(imageUrl);
      double? lat = ridingPlayer.location?.lat.getOrCrash();
      double? lng = ridingPlayer.location?.lng.getOrCrash();

      if (lat != null && lng != null) {
        pointAnnotationManager
            ?.create(PointAnnotationOptions(
                geometry: Point(coordinates: Position(lng, lat)).toJson(),
                textField: ridingPlayer.nickname.getOrCrash(),
                textSize: 16,
                textColor: 0xff000000,
                textHaloWidth: 30,
                textOffset: [0.0, -1.5],
                iconSize: isIos ? 0.05 : 0.1,
                iconOffset: [0.0, -5.0],
                symbolSortKey: ridingPlayer.id.getOrCrash().toDouble(),
                image: avatarData))
            .then((value) => pointAnnotation = value);
      }
    }
  }

  Future<Uint8List> fetchImageAsUint8List(String imageUrl) async {
    final response = await http.get(Uri.parse(imageUrl));
    if (response.statusCode == 200) {
      return response.bodyBytes;
    } else {
      throw Exception('Failed to load image');
    }
  }

  double adjustIconSizeForDevice(BuildContext context, double baseSize) {
    debugPrint("WTWWTWT :: ${MediaQuery.of(context).size.width}");
    double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    return baseSize / devicePixelRatio;
  }

  _addTestMarker() async {
    const lat = 37.6390034;
    const lng = 128.6803521;

    String imageUrl =
        "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/profile/profile_snow_ball_12.webp";
    Uint8List imageBytes;

//     WidgetsToImageController controller = WidgetsToImageController();
// // to save image bytes of widget
// //     Uint8List? bytes;
//     WidgetsToImage(
//       controller: controller,
//       child: Container(
//         width: 100,
//         height: 100,
//         color: Colors.pink,
//       ),
//     );
//
//     final bytes = await controller.capture();

    final genKey = GlobalKey();

    // RepaintBoundary(
    //   key: key,
    //   child: ElevatedButton(
    //     style: ElevatedButton.styleFrom(
    //         shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(12))),
    //     onPressed: () {},
    //     child: Text('Simple Button'),
    //   ),
    // );
    //
    // final bytes = await WidgetToImage.asUint8List(key);

    // final RenderRepaintBoundary boundary = genKey.currentState?.repaintBoundaryKey.currentContext!
    //     .findRenderObject()! as RenderRepaintBoundary;
    // ui.Image image = await boundary.toImage();
    // ByteData byteData = await image.toByteData(format: ui.ImageByteFormat.png);
    // Uint8List pngBytes = byteData.buffer.asUint8List();
    //
    // debugPrint("WTWTWT :: $bytes");
    // pointAnnotationManager
    //     ?.create(PointAnnotationOptions(
    //     geometry: Point(coordinates: Position(lng, lat)).toJson(),
    //     // textField: "2279시간 32분 전",
    //     // textSize: 12,
    //     // textHaloColor: 0xff18171E,
    //     iconHaloBlur: 15.0,
    //     // textColor: 0xff000000,
    //     // textHaloWidth: 4,
    //     // textHaloBlur: 15.0,
    //     // textRadialOffset: 0.5,
    //     // iconHaloWidth: 300,
    //     iconColor: 0xffffaacc,
    //     textOffset: [0.0, -3.5],
    //     iconSize: 0.1,
    //     iconOffset: [0.0, -5.0],
    //     symbolSortKey: 10,
    //     image: bytes))
    //     .then((value) => pointAnnotation = value);

    // try {
    //   // imageBytes = await fetchImage(imageUrl);
    //   // final Uint8List avatarData = imageBytes?.buffer.asUint8List();
    //   // final helloKey = GlobalKey<SnowrunMapMarkerState>();
    //   // final a = SnowrunMapMarker(
    //   //   key: helloKey,
    //   // );
    //
    //   // final imageBytes =
    //   //     await helloKey.currentState?.captureWidgetToUint8List();
    //
    //   final RenderRepaintBoundary boundary = helloKey.currentState?.repaintBoundaryKey.currentContext!
    //       .findRenderObject()! as RenderRepaintBoundary;
    //   // final ui.Image image = await boundary.toImage();
    //   // final ByteData? byteData =
    //   //     await image.toByteData(format: ui.ImageByteFormat.png);
    //   // final Uint8List pngBytes = byteData!.buffer.asUint8List();
    //   // final imageBytes = pngBytes;
    //   // debugPrint("WTWTT  $pngBytes");
    //
    //   pointAnnotationManager
    //       ?.create(PointAnnotationOptions(
    //           geometry: Point(coordinates: Position(lng, lat)).toJson(),
    //           // textField: "2279시간 32분 전",
    //           // textSize: 12,
    //           // textHaloColor: 0xff18171E,
    //           iconHaloBlur: 15.0,
    //           // textColor: 0xff000000,
    //           // textHaloWidth: 4,
    //           // textHaloBlur: 15.0,
    //           // textRadialOffset: 0.5,
    //           // iconHaloWidth: 300,
    //           iconColor: 0xffffaacc,
    //           textOffset: [0.0, -3.5],
    //           iconSize: 0.1,
    //           iconOffset: [0.0, -5.0],
    //           symbolSortKey: 10,
    //           image: bytes))
    //       .then((value) => pointAnnotation = value);
    // } catch (e) {
    //   // 이미지 로딩 실패 처리
    //   debugPrint("$e");
    // }

    // String avatarPath = "assets/webp/snowrun_icon.png";
    // final ByteData bytes = await rootBundle.load(avatarPath);
    // final Uint8List avatarData = bytes.buffer.asUint8List();

    // pointAnnotationManager
    //     ?.create(PointAnnotationOptions(
    //     geometry: Point(coordinates: Position(lng, lat)).toJson(),
    //     textField: "2279시간 32분 전",
    //     textSize: 12,
    //     // textHaloColor: 0xff18171E,
    //     // iconHaloBlur: 15.0,
    //     textColor: 0xff000000,
    //     textHaloWidth: 4,
    //     // textHaloBlur: 15.0,
    //     // textRadialOffset: 0.5,
    //     iconHaloWidth: 300,
    //     iconColor: 0xffffaacc,
    //     textOffset: [0.0, -3.5],
    //     iconSize: 1.0,
    //     iconOffset: [0.0, -5.0],
    //     symbolSortKey: 10,
    //     image: avatarData))
    //     .then((value) => pointAnnotation = value);
  }

  _checkLocationPermission() async {
    if (!await geolocator.Geolocator.isLocationServiceEnabled()) {
      _showOpenSettingDialog();
    }

    final checkedPermission = await geolocator.Geolocator.requestPermission();

    if (checkedPermission == geolocator.LocationPermission.always ||
        checkedPermission == geolocator.LocationPermission.whileInUse) {
      if (!mounted) return;
      _locationBloc.add(const LocationEvent.getCurrentLocation());
    } else {
      _showOpenSettingDialog();
    }
  }

  _showOpenSettingDialog() async {
    if (!mounted) return;
    await showCommonDialog(context,
        buttonText: "설정으로 이동",
        title: "현재 위치에서 주소를 검색하려면 위치 권한을 활성화 해야합니다.",
        negativeButtonText: "취소", onPressedButton: () async {
      AppSettings.openAppSettings(type: AppSettingsType.location);
      showToast(
        context,
        "위치 권한 허용 후 다시 시도해주세요.",
      );

      if (!mounted) return;
      context.pop();
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }

  String getTimeDifferenceMessage(DateTime? updateDateTime) {
    if (updateDateTime == null) return "업데이트 정보 없음";

    final now = DateTime.now();
    final difference = now.difference(updateDateTime);

    if (difference.inDays >= 1) {
      // 하루 이상 차이가 날 때
      return "${difference.inDays}일 전 업데이트";
    } else if (difference.inHours >= 1) {
      // 1시간 이상, 1일 미만 차이가 날 때
      final hours = difference.inHours;
      final minutes = difference.inMinutes % 60; // 시간을 제외한 나머지 분
      return "$hours시간 $minutes분 전 업데이트";
    } else if (difference.inMinutes >= 1) {
      // 1분 이상, 1시간 미만 차이가 날 때
      return "${difference.inMinutes}분 전 업데이트";
    } else {
      // 1분 미만 차이가 날 때
      return "방금 전 업데이트";
    }
  }
}
