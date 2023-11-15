import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/application/riding/riding_list/riding_list_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/home/home_riding_item_widget.dart';

class HomeRidingsWidget extends StatefulWidget {
  const HomeRidingsWidget({super.key});

  @override
  State createState() => HomeRidingsWidgetState();
}

class HomeRidingsWidgetState extends State<HomeRidingsWidget> {
  final ridingListBloc = getIt<RidingListBloc>();

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<RidingListBloc>(
            create: (context) =>
                ridingListBloc..add(const RidingListEvent.getRidingRooms()),
          ),
          // BlocListener<RidingActorBloc, RidingActorState>(
          //   bloc: ridingActorBloc,
          //   listener: (context, state) {
          //     //TODO : 성공, 실패
          //     final ridingRoomId = state.ridingRoom?.id.getOrCrash();
          //     if (state.status == DefaultStatus.success &&
          //         ridingRoomId != null) {
          //       RidingPage.pushRidingPage(context, ridingRoomId);
          //     } else {
          //       RidingPage.pushRidingPage(context, 0);
          //     }
          //   },
          // ),
        ],
        child: BlocBuilder<RidingListBloc, RidingListState>(
          builder: (context, state) {
            if(state.ridingRooms.isEmpty == true) {
              return const SizedBox();
            }
            return Container(
              margin: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 24,
              ),
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: AppStyle.secondaryBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 12,
                      right: 12,
                      bottom: 12,
                    ),
                    child: TitleText(
                      title: "최근 라이딩",
                      fontSize: 24,
                      color: AppStyle.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ListView.builder(
                      physics: neverScrollableScrollPhysics,
                      shrinkWrap: true,
                      itemCount: state.ridingRooms.length,
                      itemBuilder: (context, index) {
                        final ridingRoom = state.ridingRooms[index];
                        return HomeRidingItemWidget(
                          title: ridingRoom.name.getOrCrash(),
                          indexes: ridingRoom.players
                              .getOrCrash()
                              .map((e) => e.id.getOrCrash())
                              .toList(),
                        );
                      }),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
