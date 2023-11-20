import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/loading_dialog.dart';
import 'package:snowrun_app/presentation/riding/riding_page.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/riding/input_invite_riding_room_link_bottom_sheet.dart';

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
              final ridingRoomId = state.ridingRoom?.id.getOrCrash();
              if (state.status == DefaultStatus.success &&
                  ridingRoomId != null) {
                RidingPage.pushRidingPage(context, ridingRoomId, onResult: () {
                  context
                      .read<HomeRefreshBloc>()
                      .add(const HomeRefreshEvent.refresh());
                });
              } else {}
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
                    ridingActorBloc
                        .add(const RidingActorEvent.createRidingRoom());
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
                    showInputInviteRidingRoomLinkBottomSheet(context);
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
}
