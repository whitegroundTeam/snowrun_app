import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/application/riding/riding_detail/riding_detail_bloc.dart';
import 'package:snowrun_app/application/riding/riding_form/riding_form_bloc.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/loading_dialog.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/riding/edit_riding_room_name_bottom_sheet.dart';
import 'package:snowrun_app/presentation/share/share_button.dart';

class RidingDashboardPage extends StatefulWidget {
  final int ridingRoomId;

  const RidingDashboardPage({
    super.key,
    required this.ridingRoomId,
  });

  @override
  State createState() => RidingDashboardPageState();

  static pushRidingDashboardPage(
    BuildContext context,
    int ridingRoomId,
  ) {
    context.push(
      '/ridingDashboard',
      extra: {
        'ridingRoomId': ridingRoomId,
      },
    );
  }
}

class RidingDashboardPageState extends State<RidingDashboardPage> {
  final _ridingDetailBloc = getIt<RidingDetailBloc>();
  final _ridingActorBloc = getIt<RidingActorBloc>();
  final _ridingFormBloc = getIt<RidingFormBloc>();

  RidingRoom? ridingRoom;

  late LoadingDialog loader = LoadingDialog(context);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RidingDetailBloc>(
          create: (context) => _ridingDetailBloc
            ..add(RidingDetailEvent.getRidingRoom(widget.ridingRoomId)),
        ),
        BlocProvider<RidingActorBloc>(
          create: (context) => _ridingActorBloc,
        ),
        BlocProvider<RidingFormBloc>(
          create: (context) => _ridingFormBloc,
        ),
        BlocListener<RidingActorBloc, RidingActorState>(
          bloc: _ridingActorBloc,
          listener: (context, state) async {
            if (state.status == DefaultStatus.success) {
              context.go('/');
            } else {
              showToast(context, "요청에 실패했어요. 잠시 후 다시 시도해주세요😆");
            }
          },
        ),
        BlocListener<RidingFormBloc, RidingFormState>(
          bloc: _ridingFormBloc,
          listener: (context, state) async {
            loader.hide();
            context.pop();
            _ridingDetailBloc.add(RidingDetailEvent.updateRidingRoom(state.updatedRidingRoom));
          },
        ),
        // loader
      ],
      child: Scaffold(
        body: BlocBuilder<RidingDetailBloc, RidingDetailState>(
          builder: (context, state) {
            ridingRoom = state.ridingRoom;
            if (ridingRoom == null) {
              return const SizedBox();
            }
            String ridingRoomName = ridingRoom?.name.getOrCrash() ?? "";

            int playerLength = ridingRoom?.players.getOrCrash().length ?? 0;
            String description = "";
            if (playerLength > 1) {
              description =
                  "현재 ${ridingRoom?.players.getOrCrash().length ?? 0}명과 함께 타는 중!";
            } else {
              description = "혼자 라이딩을 즐기고 계시군요!\공유하고 함께 타보세요😆";
            }

            return FadeIn(
              duration: const Duration(milliseconds: 1000),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).padding.top + 12,
                  ),
                  Row(
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
                  const SizedBox(
                    height: 36,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    padding: const EdgeInsets.only(
                      bottom: 20,
                      left: 16,
                    ),
                    decoration: BoxDecoration(
                      color: AppStyle.secondaryBackground.withOpacity(0.95),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Hero(
                                  tag: "ridingRoomName",
                                  child: TitleText(
                                    title: ridingRoomName.length > 15
                                        ? "${ridingRoomName.substring(0, 15)}..."
                                        : ridingRoomName,
                                    fontSize: 20,
                                    color: AppStyle.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                            Visibility(
                              visible:
                                  ridingRoom?.me?.isOwner.getOrCrash() ?? false,
                              child: CommonDetector(
                                onTap: () {
                                  showEditRidingRoomNameBottomSheet(context,
                                      (ridingRoomName) {
                                    if (ridingRoomName.isNotEmpty) {
                                      loader.show();
                                      _ridingFormBloc.add(
                                          RidingFormEvent.updateRidingRoomName(
                                              widget.ridingRoomId,
                                              ridingRoomName));
                                    }
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20, right: 16, left: 12),
                                  child: Image.asset(
                                    'assets/webp/edit.webp',
                                    color: AppStyle.white,
                                    width: 24,
                                    height: 24,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: TitleText(
                            title: description,
                            fontSize: 16,
                            color: AppStyle.accentColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      physics: bouncingScrollPhysics,
                      padding: const EdgeInsets.only(
                        top: 16,
                        left: 20,
                        right: 20,
                      ),
                      itemCount: ridingRoom?.players.getOrCrash().length,
                      itemBuilder: (BuildContext context, int index) {
                        final player = ridingRoom?.players.getOrCrash()[index];
                        return CommonDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: Row(
                              children: [
                                CommonNetworkImage(
                                    height: 56,
                                    width: 56,
                                    imageBackgroundColor: AppStyle.transparent,
                                    imageUrl:
                                        player?.profileImage.getOrCrash() ??
                                            ""),
                                const SizedBox(
                                  width: 12,
                                ),
                                TitleText(
                                  title: player?.nickname.getOrCrash() ?? "",
                                  fontSize: 16,
                                  color: AppStyle.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  CommonDetector(
                    onTap: () {
                      bool isMaster =
                          ridingRoom?.me?.isOwner.getOrCrash() ?? false;
                      showCommonBottomSheet(context,
                          title: "이 라이딩을 종료하시겠어요?",
                          accentDescription: "즐거운 시간 보내셨나요??😆",
                          description: isMaster
                              ? "방장님이 라이딩을 종료하면 모든 플레이어들의 라이딩이 종료돼요.\n\n그래도 이 라이딩을 종료하시겠어요?"
                              : "라이딩을 종료하면 참여중인 라이딩 목록에서 이 라이딩이 사라져요.\n\n그래도 이 라이딩을 종료하시겠어요?",
                          positiveButtonText: "종료하기",
                          onClickPositiveButton: () {
                        if (isMaster) {
                          _ridingActorBloc.add(
                              RidingActorEvent.deleteRidingRoom(
                                  widget.ridingRoomId));
                        } else {
                          _ridingActorBloc.add(RidingActorEvent.exitRidingRoom(
                              widget.ridingRoomId));
                        }
                      });
                    },
                    child: Container(
                      color: AppStyle.secondaryBackground,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      child: const Center(
                        child: TitleText(
                          title: "이 라이딩 종료하기",
                          fontSize: 16,
                          color: AppStyle.secondaryTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
