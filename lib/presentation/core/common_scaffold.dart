import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/draggable/draggable_bloc.dart';
import 'package:snowrun_app/application/location/location_bloc.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class CommonScaffold extends StatefulWidget {
  final Widget body;
  final bool? useRecordingBubble;

  const CommonScaffold(
      {super.key, required this.body, this.useRecordingBubble});

  @override
  State createState() => CommonScaffoldState();
}

class CommonScaffoldState extends State<CommonScaffold> {
  @override
  Widget build(BuildContext context) {
    const recordToolWidth = 88.0;
    const recordToolHeight = 88.0;
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          widget.body,
          BlocBuilder<DraggableBloc, DraggableState>(
            builder: (context, state) {
              return Positioned(
                left: state.offset?.dx ??
                    MediaQuery.sizeOf(context).width - recordToolWidth - 16,
                top: state.offset?.dy ?? MediaQuery.sizeOf(context).height - recordToolHeight - 64,
                child: Draggable(
                  feedback: _buildRecordTool(
                      width: recordToolWidth,
                      height: recordToolHeight,
                      backgroundColor: AppStyle.background,
                      feedbackOpacity: 0.6),
                  childWhenDragging: Container(),
                  onDragEnd: (details) {
                    double finalDx = details.offset.dx;
                    double finalDy = details.offset.dy;

                    if (finalDx < 0) {
                      finalDx = 0.0;
                    }

                    if (finalDx + recordToolWidth > screenWidth) {
                      finalDx = screenWidth - recordToolWidth;
                    }

                    if (finalDy < 24) {
                      finalDy = 24.0;
                    }

                    if (finalDy + recordToolHeight > screenHeight) {
                      finalDy = screenHeight - recordToolHeight;
                    }

                    context.read<DraggableBloc>().add(
                        DraggableEvent.updatePosition(
                            Offset(finalDx, finalDy)));
                  },
                  child: _buildRecordTool(
                      width: recordToolWidth,
                      height: recordToolHeight,
                      backgroundColor: AppStyle.background,
                      feedbackOpacity: 1.0),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRecordTool(
      {required double width,
      required double height,
      required Color backgroundColor,
      required double feedbackOpacity}) {
    return CommonDetector(
      onTap: () {
        context.read<LocationBloc>().add(const LocationEvent.startRefreshLocation());
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(feedbackOpacity),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              color: AppStyle.white.withOpacity(feedbackOpacity), width: 1),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/webp/play.webp',
                width: 32,
                height: 32,
                color: AppStyle.white.withOpacity(feedbackOpacity),
              ),
              const SizedBox(height: 6,),
              TitleText(
                title: "현재 위치", //60초 마다
                fontSize: 12,
                color: AppStyle.white.withOpacity(feedbackOpacity),
                fontWeight: FontWeight.w400,
              ),
              TitleText(
                title: "갱신하기", // 위치 갱신 중
                fontSize: 12,
                color: AppStyle.accentColor.withOpacity(feedbackOpacity),
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
