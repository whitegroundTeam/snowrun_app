import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/auth/auth_bloc.dart';
import 'package:snowrun_app/application/home/refresh/home_refresh_bloc.dart';
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
          BlocListener<HomeRefreshBloc, HomeRefreshState>(
            bloc: context.read<HomeRefreshBloc>(),
            listener: (context, state) {
              ridingListBloc.add(const RidingListEvent.getRidingRooms());
            },
          ),
        ],
        child: BlocBuilder<AuthBloc, AuthState>(
          bloc: context.read<AuthBloc>(),
          builder: (context, authState) {
            final isAuthenticated = authState.user != null;
            if (!isAuthenticated) {
              return const SizedBox();
            }
            return BlocBuilder<RidingListBloc, RidingListState>(
              builder: (context, state) {
                final ridingRooms = state.ridingRooms;
                if (ridingRooms.isEmpty == true) {
                  return const SizedBox();
                }

                int ridingPlayersMaxCount = ridingRooms.fold(
                    0,
                    (max, ridingRoom) =>
                        ridingRoom.players.getOrCrash().length > max
                            ? ridingRoom.players.getOrCrash().length
                            : max);
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
                          itemCount: ridingRooms.length,
                          itemBuilder: (context, index) {
                            final ridingRoom = ridingRooms[index];
                            return HomeRidingItemWidget(
                              ridingRoom: ridingRoom,
                              players: ridingRoom.players.getOrCrash(),
                              maxPlayersCount: ridingPlayersMaxCount,
                            );
                          }),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
