import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/auth/auth_bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/application/home/refresh/home_refresh_bloc.dart';
import 'package:doortoout/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/loading_dialog.dart';
import 'package:doortoout/presentation/core/toast/common_toast.dart';
import 'package:doortoout/presentation/riding/riding_room_page.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/text/title_text.dart';
import 'package:doortoout/presentation/riding/input_invite_riding_room_link_bottom_sheet.dart';

class HomeStartRidingWidget extends StatefulWidget {
  const HomeStartRidingWidget({super.key});

  @override
  State createState() => HomeStartRidingWidgetState();
}

class HomeStartRidingWidgetState extends State<HomeStartRidingWidget> {
  final ridingActorBloc = getIt<RidingActorBloc>();
  late LoadingDialog loader = LoadingDialog(context);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RidingActorBloc>(create: (context) => ridingActorBloc),
          BlocListener<RidingActorBloc, RidingActorState>(
            bloc: ridingActorBloc,
            listener: (context, state) {
              //Create
              final createdRidingRoomId =
                  state.createdRidingRoom?.id.getOrCrash();
              if (state.status == RidingActorStatus.successCreateRidingRoom &&
                  createdRidingRoomId != null) {
                RidingRoomPage.pushRidingPage(context, createdRidingRoomId,
                    onResult: () {
                  context
                      .read<HomeRefreshBloc>()
                      .add(const HomeRefreshEvent.refresh());
                });
              }

              //Join
              final joinedRidingRoomId =
                  state.joinedRidingRoom?.id.getOrCrash();
              if (state.status == RidingActorStatus.successJoinRidingRoom &&
                  joinedRidingRoomId != null) {
                RidingRoomPage.pushRidingPage(context, joinedRidingRoomId,
                    onResult: () {
                  context
                      .read<HomeRefreshBloc>()
                      .add(const HomeRefreshEvent.refresh());
                });
              } else if (state.status ==
                  RidingActorStatus.failureJoinRidingRoom) {
                showToast(context, "라이딩방을 찾을 수 없어요😆\n초대 링크를 다시 한번 확인해주세요!");
              }
              loader.hide();
            },
          ),
        ],
        child: BlocBuilder<RidingActorBloc, RidingActorState>(
          builder: (context, state) {
            return Column(
              children: [
                CommonDetector(
                  needAuth: true,
                  onTap: () {
                    loader.show();
                    if(context.read<AuthBloc>().state.existedProfileImage) {
                      ridingActorBloc
                          .add(const RidingActorEvent.createRidingRoom());
                    } else {
                      showToast(context, "눈송이를 선택해주세요");
                      loader.hide();
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppStyle.secondaryBackground,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppStyle.accentColor, width: 2),
                    ),
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 36,
                    ),
                    padding: const EdgeInsets.only(
                      left: 12,
                      right: 4,
                      top: 16,
                      bottom: 16,
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/webp/snowrun_gradation.webp',
                          width: 48,
                          height: 48,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TitleText(
                                title: "스키장에 도착하셨나요?",
                                fontSize: 18,
                                color: AppStyle.white,
                                fontWeight: FontWeight.w400,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              TitleText(
                                title: "새로운 라이딩 시작하기",
                                fontSize: 18,
                                color: AppStyle.accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/webp/arrow_right.webp',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                CommonDetector(
                  needAuth: true,
                  onTap: () {
                    if(context.read<AuthBloc>().state.existedProfileImage) {
                      showInputInviteRidingRoomLinkBottomSheet(context,
                              (inputText) {
                            final roomNumber = extractRoomNumber(inputText);
                            if (roomNumber?.isNotEmpty == true) {
                              try {
                                loader.show();
                                ridingActorBloc.add(RidingActorEvent.joinRidingRoom(
                                    int.parse(roomNumber ?? "")));
                              } catch (e) {
                                showToast(context, "알 수 없는 오류가 발생했어요");
                              }
                            } else {
                              showToast(context, "초대 링크를 채워주세요😆");
                            }
                          });
                    } else {
                      showToast(context, "눈송이를 선택해주세요");
                      loader.hide();
                    }
                  },
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: AppStyle.secondaryBackground,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.only(
                      left: 24,
                      right: 24,
                      top: 8,
                    ),
                    padding: const EdgeInsets.only(
                      top: 12,
                      bottom: 12,
                    ),
                    child: const Center(
                      child: TitleText(
                        title: "다른 라이딩에 참여하기",
                        fontSize: 16,
                        color: AppStyle.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  String? extractRoomNumber(String url) {
    if (!url.contains(dotenv.env['APP_URL_HOST'] ?? "")) {
      return null;
    }

    final RegExp regExp = RegExp(r'roomNumber=(\d+)');
    final match = regExp.firstMatch(url);

    if (match != null && match.groupCount >= 1) {
      return match.group(1);
    }

    return null;
  }
}
