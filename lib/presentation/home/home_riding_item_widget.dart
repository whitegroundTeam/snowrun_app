import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/application/riding/riding_detail/riding_detail_bloc.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/domain/riding/riding_room.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/loading_dialog.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';
import 'package:snowrun_app/presentation/riding/riding_page.dart';

class HomeRidingItemWidget extends StatefulWidget {
  //TODO : 라이딩 받아와야함
  final RidingRoom ridingRoom;
  final List<RidingPlayer> players;
  final int maxPlayersCount;

  const HomeRidingItemWidget(
      {super.key, required this.ridingRoom, required this.players, required this.maxPlayersCount});

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
            final ridingRoomId = state.ridingRoom?.id.getOrCrash();
            if (state.status == DefaultStatus.success && ridingRoomId != null) {
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
          return CommonDetector(
            onTap: () {
              loader.show();
              ridingActorBloc.add(RidingActorEvent.joinRidingRoom(
                widget.ridingRoom.id.getOrCrash(),
              ));
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 12, right: 4, top: 16, bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TitleText(
                      title: widget.ridingRoom.name.getOrCrash(),
                      fontSize: 18,
                      color: AppStyle.secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  PlayersCountsWidget(players: widget.players, maxPlayersCount: widget.maxPlayersCount),
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
