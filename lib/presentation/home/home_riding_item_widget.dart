import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/loading_dialog.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';
import 'package:snowrun_app/presentation/riding/riding_room_page.dart';

class HomeRidingItemWidget extends StatefulWidget {
  final RidingRoom ridingRoom;
  final List<RidingPlayer> players;
  final int maxPlayersCount;

  const HomeRidingItemWidget(
      {super.key,
      required this.ridingRoom,
      required this.players,
      required this.maxPlayersCount});

  @override
  State createState() => HomeRidingItemWidgetState();
}

class HomeRidingItemWidgetState extends State<HomeRidingItemWidget> {
  final ridingActorBloc = getIt<RidingActorBloc>();
  late LoadingDialog loader = LoadingDialog(context);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RidingActorBloc>(create: (context) => ridingActorBloc),
        BlocListener<RidingActorBloc, RidingActorState>(
          bloc: ridingActorBloc,
          listener: (context, state) {
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
            final joinedRidingRoomId = state.joinedRidingRoom?.id.getOrCrash();
            if (state.status == RidingActorStatus.successJoinRidingRoom &&
                joinedRidingRoomId != null) {
              RidingRoomPage.pushRidingPage(context, joinedRidingRoomId,
                  onResult: () {
                context
                    .read<HomeRefreshBloc>()
                    .add(const HomeRefreshEvent.refresh());
              });
            }
            loader.hide();
          },
        ),
      ],
      child: BlocBuilder<RidingActorBloc, RidingActorState>(
        builder: (context, state) {
          return CommonDetector(
            onTap: () {
              loader.show();
              if (context.read<AuthBloc>().state.existedProfileImage) {
                ridingActorBloc.add(
                  RidingActorEvent.joinRidingRoom(
                    widget.ridingRoom.id.getOrCrash(),
                  ),
                );
              } else {
                loader.hide();
                showToast(context, "눈송이를 선택해주세요");
              }
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 16, right: 4, top: 16, bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TitleText(
                      title: widget.ridingRoom.name.getOrCrash(),
                      fontSize: 16,
                      color: AppStyle.secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  PlayersCountsWidget(
                      players: widget.players,
                      maxPlayersCount: widget.maxPlayersCount),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
