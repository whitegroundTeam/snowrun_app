import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/domain/riding/riding_player.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';

class PlayersCountsWidget extends StatefulWidget {
  final List<RidingPlayer> players;
  final int maxPlayersCount;

  const PlayersCountsWidget({super.key, required this.players, required this.maxPlayersCount});

  @override
  State createState() => PlayersCountsWidgetState();
}

class PlayersCountsWidgetState extends State<PlayersCountsWidget> {
  static const double containerMinWidth = 32.0;
  static const int maxDisplayCount = 3;

  @override
  Widget build(BuildContext context) {
    final moreCount = max(widget.players.length - maxDisplayCount, 0);
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: containerMinWidth,
          height: 16,
          child: Stack(
            children: List.generate(
              min(widget.players.length, maxDisplayCount),
              (index) => _buildProfileWidget(index, widget.players[index]),
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Container(
          // color: Colors.pink,
          constraints: BoxConstraints(
            minWidth: min(widget.maxPlayersCount, maxDisplayCount+1) * 8,
          ),
          child: TitleText(
            title: moreCount > 0
                ? moreCount > 999
                    ? "+999"
                    : "+$moreCount"
                : "  ${widget.players.length}",
            fontSize: 14,
            color: AppStyle.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileWidget(int index, RidingPlayer player) {
    return Positioned(
      left: index * 8 + (maxDisplayCount - min(widget.players.length, maxDisplayCount)) * 8,
      child: CommonNetworkImage(
          width: 16,
          height: 16,
          imageUrl: player.profileImage.getOrCrash()),
    );
  }
}
