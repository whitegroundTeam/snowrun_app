import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/user/model/user.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/home/home_riding_item_widget.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';
import 'package:snowrun_app/presentation/riding/riding_dashboard_page.dart';
import 'package:snowrun_app/presentation/share/share_button.dart';

class RidingPage extends StatefulWidget {
  const RidingPage({super.key});

  @override
  State createState() => RidingPageState();

  static pushRidingPage(
    BuildContext context,
  ) {
    context.push(
      '/riding',
      // extra: {'url': url, 'title': title ?? ''},
    );
  }
}

class RidingPageState extends State<RidingPage> {
  final _locationBloc = getIt<LocationBloc>();
  final _userBloc = getIt<UserBloc>();

  Timer? _timer;

  MapboxMap? mapboxMap;
  PointAnnotation? pointAnnotation;
  PointAnnotationManager? pointAnnotationManager;
  bool isCreatedMap = false;

  @override
  void initState() {
    super.initState();
    _timer =
        Timer.periodic(const Duration(seconds: 10), (Timer t) => _getUsers());
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

    const tempRidingName = "라이딩 #ABCED 이름이이이이이있다요오오오";

    return MultiBlocProvider(
      providers: [
        BlocProvider<UserBloc>(create: (context) => _userBloc),
        BlocProvider<LocationBloc>(create: (context) => _locationBloc
            //   ..add(const LocationEvent.getCurrentLocation()),
            ),
        BlocListener<LocationBloc, LocationState>(
          listener: (context, state) async {
            if (state.status == LocationStatus.successGetCurrentLocation) {
              _userBloc.add(UserEvent.updateCurrentLocation(
                  state.userLocation.lat.getOrCrash(),
                  state.userLocation.lng.getOrCrash()));
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          listener: (context, state) async {
            if (state.status == UserStatus.successGetUsers) {
              await updateMarkers(state.users);
            } else if (state.status ==
                UserStatus.successUpdateCurrentLocation) {
              // _userBloc.add(const UserEvent.getUsers());
            }
          },
        ),
      ],
      child: Scaffold(
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
                  pitch: 30,
                  center: Point(
                    coordinates: Position(
                      // 126.6338237,
                      // 37.4064278,
                      128.6803521,
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
                child: Container(
                  decoration: BoxDecoration(
                    color: AppStyle.secondaryBackground.withOpacity(0.95),
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
                                RidingDashboardPage.pushRidingDashboardPage(
                                    context);
                              },
                              child: Center(
                                child: Hero(
                                  tag: "ridingRoomName",
                                  child: TitleText(
                                    title: tempRidingName.length > 10
                                        ? "${tempRidingName.substring(0, 10)}..."
                                        : tempRidingName,
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
                                RidingDashboardPage.pushRidingDashboardPage(
                                    context);
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
                                RidingDashboardPage.pushRidingDashboardPage(
                                    context);
                              },
                              child: const PlayersCountsWidget(indexes: [
                                8,
                                4,
                                2,
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                2,
                                3,
                                13,
                                12,
                                13
                              ]),
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
                            const CommonNetworkImage(
                                height: 56,
                                width: 56,
                                imageBackgroundColor: AppStyle.transparent,
                                imageUrl:
                                    "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/profile/profile_snow_ball_12.webp"),
                            const SizedBox(
                              width: 16,
                            ),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TitleText(
                                    title: "눈송이 #JFJD",
                                    fontSize: 20,
                                    color: AppStyle.white,
                                    fontWeight: FontWeight.w700,
                                    maxLine: 1,
                                    textOverFlow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  TitleText(
                                    title: "2028.09.14 업데이트",
                                    fontSize: 16,
                                    color: AppStyle.secondaryTextColor,
                                    fontWeight: FontWeight.w500,
                                    maxLine: 1,
                                    textOverFlow: TextOverflow.ellipsis,
                                  ),
                                  //TODO : 업데이트 시간
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            Container(
                              width: 48,
                              height: 56,
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xFFFFB74D), // 밝은 색상
                                    Color(0xFFF57C00), // 중간 색상
                                    Color(0xFFEF6C00), // 더 진한 색상
                                  ],
                                ),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
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
                            const SizedBox(
                              width: 8,
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
                          color: AppStyle.secondaryBackground.withOpacity(0.95),
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

  void _getUsers() {
    // _locationBloc.add(const LocationEvent.getCurrentLocation());
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
    mapboxMap.compass.updateSettings(CompassSettings(position: OrnamentPosition.BOTTOM_LEFT, marginBottom: 96));
    setState(() {
      isCreatedMap = true;
    });
  }

  updateMarkers(List<User> users) async {
    if (!isCreatedMap) {
      return;
    }
    debugPrint("UPDATEMARKERS :: ${users.length}");
    pointAnnotationManager?.deleteAll();
    for (var user in users) {
      String avatarPath = "assets/webp/snowrun_icon.png";
      if (user.nickname.getOrCrash() == "줄리") {
        avatarPath = "assets/webp/julie_avatar.png";
      } else if (user.nickname.getOrCrash() == "댄") {
        avatarPath = "assets/webp/dan_avatar.png";
      } else if (user.nickname.getOrCrash() == "케틀린") {
        avatarPath = "assets/webp/kathlyn_avatar.png";
      } else if (user.nickname.getOrCrash() == "루만") {
        avatarPath = "assets/webp/luman_avatar.png";
      }

      final ByteData bytes = await rootBundle.load(avatarPath);
      final Uint8List avatarData = bytes.buffer.asUint8List();
      double? lat = user.location?.lat.getOrCrash();
      double? lng = user.location?.lng.getOrCrash();

      if (lat != null && lng != null) {
        pointAnnotationManager
            ?.create(PointAnnotationOptions(
                geometry: Point(coordinates: Position(lng, lat)).toJson(),
                textField: user.nickname.getOrCrash(),
                textSize: 24,
                textHaloColor: 0xffffaacc,
                // textAnchor: TextAnchor.BOTTOM,
                textColor: 0xff00ddff,
                textHaloWidth: 30,
                textOffset: [0.0, -2.0],
                iconSize: 1.0,
                iconOffset: [0.0, -5.0],
                symbolSortKey: 10,
                image: avatarData))
            .then((value) => pointAnnotation = value);
      }
    }
  }
}
