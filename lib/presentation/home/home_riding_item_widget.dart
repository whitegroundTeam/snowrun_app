import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/riding/riding_actor/riding_actor_bloc.dart';
import 'package:snowrun_app/injection.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';
import 'package:snowrun_app/presentation/riding/riding_page.dart';

class HomeRidingItemWidget extends StatefulWidget {
  //TODO : 라이딩 받아와야함
  final String title;
  final List<int> indexes;

  const HomeRidingItemWidget(
      {super.key, required this.title, required this.indexes});

  @override
  State createState() => HomeRidingItemWidgetState();
}

class HomeRidingItemWidgetState extends State<HomeRidingItemWidget> {
  final ridingActorBloc = getIt<RidingActorBloc>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RidingActorBloc>(
            create: (context) => ridingActorBloc),
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
      child: BlocBuilder<RidingActorBloc, RidingActorState>(
        builder: (context, state) {
          return CommonDetector(
            onTap: () {
              RidingPage.pushRidingPage(context, 0);
              // ridingActorBloc.add(
              //     const RidingActorEvent.createRidingRoom());
            },
            child: Container(
              padding: const EdgeInsets.only(
                  left: 12, right: 4, top: 16, bottom: 16),
              child: Row(
                children: [
                  Expanded(
                    child: TitleText(
                      title: widget.title,
                      fontSize: 18,
                      color: AppStyle.secondaryTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4,),
                  PlayersCountsWidget(indexes: widget.indexes),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
