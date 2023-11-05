import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/riding/players_counts_widget.dart';

class HomeRidingItemWidget extends StatefulWidget {
  //TODO : 라이딩 받아와야함
  final String title;
  final List<int> indexes;

  const HomeRidingItemWidget({super.key, required this.title, required this.indexes});

  @override
  State createState() => HomeRidingItemWidgetState();
}

class HomeRidingItemWidgetState extends State<HomeRidingItemWidget> {
  @override
  Widget build(BuildContext context) {
    return CommonDetector(
      onTap: () {

      },
      child: Container(
        padding: const EdgeInsets.only(left: 12, right: 4, top: 16, bottom: 16),
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
  }
}
