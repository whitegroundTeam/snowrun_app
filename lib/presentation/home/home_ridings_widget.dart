import 'package:flutter/widgets.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/home/home_riding_item_widget.dart';

class HomeRidingsWidget extends StatefulWidget {
  const HomeRidingsWidget({super.key});

  @override
  State createState() => HomeRidingsWidgetState();
}

class HomeRidingsWidgetState extends State<HomeRidingsWidget> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            HomeRidingItemWidget(title: "SnowRun", indexes: [0,1,11,9,0,1,2,3,4,5,6,7,8,9],),
            HomeRidingItemWidget(title: "용평 원정팀", indexes: [8,4,2,1,2,3,4,5,6,7,2,3,13,12,13],),
            HomeRidingItemWidget(title: "니세코 한번 가보자!", indexes: [2,1,1,2,3,4,2,3,2,3,],),
            HomeRidingItemWidget(title: "휘슬러에서 함께해요", indexes: [0,],),
            HomeRidingItemWidget(title: "휘팍휘팍!",indexes: [9,2,4,5,6,7,8,3,2],),
          ],
        ),
      ),
    );
  }
}
