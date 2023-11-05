import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class PlayersCountsWidget extends StatefulWidget {
  final List<int> indexes;

  const PlayersCountsWidget({super.key, required this.indexes});

  @override
  State createState() => PlayersCountsWidgetState();
}

class PlayersCountsWidgetState extends State<PlayersCountsWidget> {
  static const double containerMinWidth = 32.0;
  static const int maxDisplayCount = 3;

  @override
  Widget build(BuildContext context) {
    final moreCount = max(widget.indexes.length - maxDisplayCount, 0);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: containerMinWidth,
          height: 16,
          child: Stack(
            children: List.generate(
              min(widget.indexes.length, maxDisplayCount),
              (index) => _buildProfileWidget(index, widget.indexes[index]),
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          constraints: const BoxConstraints(
            minWidth: 42,
          ),
          child: TitleText(
            title: moreCount > 0
                ? moreCount > 999
                    ? "+999"
                    : "+${moreCount}"
                // : "+999"
                : "",
            fontSize: 14,
            color: AppStyle.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileWidget(int index, int tempValue) {
    return Positioned(
      left: index * 8,
      child: CommonNetworkImage(
          width: 16,
          height: 16,
          imageUrl:
              "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/profile/profile_snow_ball_$tempValue.webp"),
    );
  }
}
