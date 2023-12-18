import 'dart:async';
import 'dart:io';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:geolocator/geolocator.dart' as geolocator;
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:go_router/go_router.dart';
import 'package:mapbox_maps_flutter/mapbox_maps_flutter.dart' as mapbox;
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/application/riding/riding_controller/riding_controller_bloc.dart';
import 'package:snowrun_app/application/riding/riding_detail/riding_detail_bloc.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/common_loading.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/riding/listener/map_marker_click_listener.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';
import 'package:snowrun_app/presentation/riding/riding_dashboard_page.dart';
import 'package:snowrun_app/presentation/share/share_button.dart';

class RidingRoomPage extends StatefulWidget {
  final int ridingRoomId;

  const RidingRoomPage({
    super.key,
    required this.ridingRoomId,
  });

  @override
  State createState() => RidingRoomPageState();

  static pushRidingPage(BuildContext context, int ridingRoomId,
      {Function? onResult}) {
    context.push(
      '/ridingRoom',
      extra: {
        'ridingRoomId': ridingRoomId,
      },
    ).then((value) => onResult?.call());
  }
}

class AnnotationClickListener extends mapbox.OnPointAnnotationClickListener {
  @override
  void onPointAnnotationClick(mapbox.PointAnnotation annotation) {}
}

class RidingRoomPageState extends State<RidingRoomPage> {
  static const double defaultZoom = 14;
  final _ridingDetailBloc = getIt<RidingDetailBloc>();
  final _ridingControllerBloc = getIt<RidingControllerBloc>();

  Timer? _timer;

  mapbox.MapboxMap? mapboxMap;
  mapbox.PointAnnotation? pointAnnotation;
  mapbox.PointAnnotationManager? pointAnnotationManager;
  bool isCreatedMap = false;

  RidingPlayer? selectedRidingPlayer;
  bool isIos = false;

  RidingRoom? ridingRoom;
  bool isShowLoading = false;

  @override
  void initState() {
    super.initState();
    if (Platform.isIOS) {
      isIos = true;
    }

    // _timer = Timer.periodic(
    //     const Duration(minutes: 1),
    //     (Timer t) => _ridingDetailBloc
    //         .add(RidingDetailEvent.getRidingRoom(widget.ridingRoomId)));
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
        BlocProvider<RidingControllerBloc>(
          create: (context) => _ridingControllerBloc,
        ),
        BlocProvider<RidingDetailBloc>(
          create: (context) =>
          _ridingDetailBloc
            ..add(RidingDetailEvent.getRidingRoom(widget.ridingRoomId)),
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
        BlocListener<RidingControllerBloc, RidingControllerState>(
          bloc: _ridingControllerBloc,
          listener: (context, state) async {
            _setSelectedRidingPlayer(state.selectedMarkerSymbolId?.toInt());
          },
        ),
        BlocListener<RidingDetailBloc, RidingDetailState>(
          listener: (context, state) async {
            ridingRoom = state.ridingRoom;
            _setSelectedRidingPlayer(ridingRoom?.me?.id.getOrCrash());
            if (state.status == DefaultStatus.success) {
              updateMarkers(state.ridingRoom?.players.getOrCrash() ?? []);
            }
          },
        ),
        BlocListener<UserBloc, UserState>(
          bloc: context.read<UserBloc>(),
          listener: (context, state) async {
            // await updateMarkers(state.users);
            if (state.status == UserStatus.successGetUsers) {} else
            if (state.status ==
                UserStatus.successUpdateCurrentLocation) {
              // _userBloc.add(const UserEvent.getUsers());
              _ridingDetailBloc
                  .add(RidingDetailEvent.getRidingRoom(widget.ridingRoomId));
            }
          },
        ),
      ],
      child: CommonScaffold(
        body: BlocBuilder<RidingDetailBloc, RidingDetailState>(
          builder: (context, state) {
            String ridingRoomName = ridingRoom?.name.getOrCrash() ?? "";
            return Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  // bottom: bottomAreaHeight + mapViewBottomPadding,
                  bottom: MediaQuery
                      .sizeOf(context)
                      .height * 0.1 +
                      mapViewBottomPadding,
                  child: mapbox.MapWidget(
                    key: const ValueKey('mapWidget'),
                    resourceOptions: mapbox.ResourceOptions(
                      accessToken: dotenv.env['MAPBOX_ACCESS_TOKEN'] ?? "",
                    ),
                    onMapCreated: _onMapCreated,
                    styleUri: "mapbox://styles/mapbox/outdoors-v12",
                    onCameraChangeListener: _onCameraChangeListener,
                    onMapIdleListener: _onMapIdleListener,
                    onMapLoadedListener: _onMapLoadedListener,
                    cameraOptions: mapbox.CameraOptions(
                      anchor: mapbox.ScreenCoordinate(x: 0, y: 0),
                      zoom: defaultZoom,
                      center: mapbox.Point(
                        coordinates: mapbox.Position(
                          selectedRidingPlayer?.location?.lng.getOrCrash() ??
                              128.6803521,
                          selectedRidingPlayer?.location?.lat.getOrCrash() ??
                              37.6390034,
                        ),
                      ).toJson(),
                    ),
                  ),
                ),

                // const Positioned(
                //   right: 8,
                //   bottom: bottomAreaHeight + 16,
                //   child: AnimatedOpacity(
                //     opacity: 1.0,
                //     duration: Duration(milliseconds: 1000),
                //     child: Column(
                //       children: [
                //         //FIXME : 제스쳐 후 +,- 입력 시 제스쳐로 인해 변경된 최근 카메라 위치가 반영이 안되어있는 문제
                //         // CommonDetector(
                //         //   onTap: () async {
                //         //     mapboxMap?.setCamera(mapbox.CameraOptions(
                //         //       zoom: await getCurrentZoom() + 1,
                //         //     ));
                //         //   },
                //         //   child: Container(
                //         //     decoration: BoxDecoration(
                //         //       color: AppStyle.secondaryBackground
                //         //           .withOpacity(0.95),
                //         //       borderRadius: BorderRadius.circular(8),
                //         //     ),
                //         //     padding: const EdgeInsets.all(12),
                //         //     child: Image.asset(
                //         //       'assets/webp/plus.webp',
                //         //       color: AppStyle.white,
                //         //       width: 16,
                //         //       height: 16,
                //         //     ),
                //         //   ),
                //         // ),
                //         // const SizedBox(height: 4,),
                //         // CommonDetector(
                //         //   onTap: () async {
                //         //     mapboxMap?.setCamera(mapbox.CameraOptions(
                //         //       zoom: await getCurrentZoom() - 1,
                //         //     ));
                //         //   },
                //         //   child: Container(
                //         //     decoration: BoxDecoration(
                //         //       color: AppStyle.secondaryBackground
                //         //           .withOpacity(0.95),
                //         //       borderRadius: BorderRadius.circular(8),
                //         //     ),
                //         //     padding: const EdgeInsets.all(12),
                //         //     child: Image.asset(
                //         //       'assets/webp/minus.webp',
                //         //       color: AppStyle.white,
                //         //       width: 16,
                //         //       height: 16,
                //         //     ),
                //         //   ),
                //         // ),
                //         // const SizedBox(height: 24,),
                //         // CommonDetector(
                //         //   onTap: () {
                //         //   },
                //         //   child: Container(
                //         //     decoration: BoxDecoration(
                //         //       color: AppStyle.secondaryBackground
                //         //           .withOpacity(0.95),
                //         //       borderRadius: BorderRadius.circular(8),
                //         //     ),
                //         //     padding: const EdgeInsets.all(12),
                //         //     child: Image.asset(
                //         //       'assets/webp/refresh.webp',
                //         //       color: AppStyle.white,
                //         //       width: 24,
                //         //       height: 24,
                //         //     ),
                //         //   ),
                //         // ),
                //       ],
                //     ),
                //   ),
                // ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
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
                                        context, widget.ridingRoomId,
                                        onResult: () {
                                          _ridingDetailBloc.add(
                                              RidingDetailEvent.getRidingRoom(
                                                  widget.ridingRoomId));
                                        });
                                  },
                                  child: Center(
                                    child: Hero(
                                      tag: "ridingRoomName",
                                      child: TitleText(
                                        title: ridingRoomName.length > 15
                                            ? "${ridingRoomName.substring(
                                            0, 15)}..."
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
                                    RidingDashboardPage.pushRidingDashboardPage(
                                        context, widget.ridingRoomId,
                                        onResult: () {
                                          _ridingDetailBloc.add(
                                              RidingDetailEvent.getRidingRoom(
                                                  widget.ridingRoomId));
                                        });
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
                                        context, widget.ridingRoomId,
                                        onResult: () {
                                          _ridingDetailBloc
                                              .add(
                                              RidingDetailEvent.getRidingRoom(
                                                widget.ridingRoomId,
                                              ));
                                        });
                                  },
                                  child: PlayersCountsWidget(
                                    players:
                                    ridingRoom?.players.getOrCrash() ?? [],
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
                          AnimatedOpacity(
                            opacity: selectedRidingPlayer != null ? 1.0 : 0,
                            duration: const Duration(milliseconds: 1000),
                            child: SizedBox(
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
                                          title: selectedRidingPlayer?.nickname
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
                                          fontSize: 14,
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
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery
                      .of(context)
                      .padding
                      .top + 12,
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
                      ShareButton(ridingRoom: state.ridingRoom,),
                    ],
                  ),
                ),
                Positioned(
                  top: 56,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Visibility(
                    visible: isShowLoading,
                    child: const CommonLoading(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // void _updateUserLocation() {
  //   _checkLocationPermission();
  // }

  _onMapCreated(mapbox.MapboxMap newMapBox) {
    mapboxMap = newMapBox;

    // MapLoadedEventData mapLoadedEventData
    // if (mapboxMap.onMapLoadedListener != null) {
    //   mapboxMap.onMapLoadedListener!((a) {
    //     // 함수 실행
    //   });
    // }

    // if(mapboxMap != null) {
    //   // mapboxMap!.onMapLoadedListener!((a) {
    //   //   debugPrint("WTWTWTWT :: WTWTTW ${a}");
    //   // } as mapbox.MapLoadedEventData);
    // }


    mapboxMap?.setOnMapMoveListener((coordinate) {

    });


    mapboxMap?.scaleBar.updateSettings(mapbox.ScaleBarSettings(enabled: false));
    mapboxMap?.logo.updateSettings(
      mapbox.LogoSettings(
        marginBottom: 48,
      ),
    );
    mapboxMap?.attribution.updateSettings(
      mapbox.AttributionSettings(
        marginBottom: 48,
      ),
    );
    mapboxMap?.annotations.createPointAnnotationManager().then((value) async {
      pointAnnotationManager = value;
      pointAnnotationManager?.addOnPointAnnotationClickListener(
          MapMarkerClickListener(_ridingControllerBloc));
    });
    mapboxMap?.compass.updateSettings(mapbox.CompassSettings(
        position: mapbox.OrnamentPosition.BOTTOM_LEFT, marginBottom: 96));
    setState(() {
      isCreatedMap = true;
    });
  }

  _onMapLoadedListener(mapbox.MapLoadedEventData data) {
    print("MAPMAP :: MapLoadedEventData: begin: ${data.begin}, end: ${data.end}");
  }

  _onCameraChangeListener(mapbox.CameraChangedEventData data) {
    _hideLoading();
    print("MAPMAP :: CameraChangedEventData: begin: ${data.begin}, end: ${data.end}");
  }

  _onMapIdleListener(mapbox.MapIdleEventData data) {
    print("MAPMAP :: MapIdleEventData: begin: ${data.begin}, end: ${data.end}");
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
        pointAnnotationManager?.create(mapbox.PointAnnotationOptions(
            geometry:
            mapbox.Point(coordinates: mapbox.Position(lng, lat)).toJson(),
            textField: ridingPlayer.nickname.getOrCrash(),
            textSize: 14,
            textColor: 0xff000000,
            textHaloWidth: 30,
            textOffset: [0.0, -1.5],
            iconSize: isIos ? 0.05 : 0.1,
            iconOffset: [0.0, -5.0],
            symbolSortKey: ridingPlayer.id.getOrCrash().toDouble(),
            image: avatarData));
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
    debugPrint("WTWWTWT :: ${MediaQuery
        .of(context)
        .size
        .width}");
    double devicePixelRatio = MediaQuery
        .of(context)
        .devicePixelRatio;
    return baseSize / devicePixelRatio;
  }

  _setSelectedRidingPlayer(int? playerId, {int? isInit}) {
    setState(() {
      selectedRidingPlayer = ridingRoom?.players.getOrCrash().firstWhere(
              (player) => player.id.getOrCrash().toInt() == playerId?.toInt());
    });
    mapboxMap?.setCamera(mapbox.CameraOptions(
      anchor: mapbox.ScreenCoordinate(x: 0, y: 0),
      center: mapbox.Point(
        coordinates: mapbox.Position(
          selectedRidingPlayer?.location?.lng.getOrCrash() ?? 128.6803521,
          selectedRidingPlayer?.location?.lat.getOrCrash() ?? 37.6390034,
        ),
      ).toJson(),
    ));
  }

  // _checkLocationPermission() async {
  //   if (!await geolocator.Geolocator.isLocationServiceEnabled()) {
  //     _showOpenSettingDialog();
  //   }
  //
  //   final checkedPermission = await geolocator.Geolocator.requestPermission();
  //
  //   if (checkedPermission == geolocator.LocationPermission.always ||
  //       checkedPermission == geolocator.LocationPermission.whileInUse) {
  //     if (!mounted) return;
  //     _locationBloc.add(const LocationEvent.getCurrentLocation());
  //   } else {
  //     _showOpenSettingDialog();
  //   }
  // }
  //
  // _showOpenSettingDialog() async {
  //   if (!mounted) return;
  //   await showCommonDialog(context,
  //       buttonText: "설정으로 이동",
  //       title: "현재 위치에서 주소를 검색하려면 위치 권한을 활성화 해야합니다.",
  //       negativeButtonText: "취소",
  //       onPressedButton: () async {
  //         AppSettings.openAppSettings(type: AppSettingsType.location);
  //         showToast(
  //           context,
  //           "위치 권한 허용 후 다시 시도해주세요.",
  //         );
  //
  //         if (!mounted) return;
  //         context.pop();
  //       },
  //       onPressedNegativeButton: () {
  //         context.pop();
  //       });
  // }

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

  Future<double> getCurrentZoom() async {
    _showLoading();
    final cameraState = await mapboxMap?.getCameraState();
    return cameraState?.zoom ?? 12;
  }

  _showLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!isShowLoading) {
        setState(() {
          isShowLoading = true;
        });
      }
    });
  }

  _hideLoading() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isShowLoading) {
        setState(() {
          isShowLoading = false;
        });
      }
    });
  }
}
