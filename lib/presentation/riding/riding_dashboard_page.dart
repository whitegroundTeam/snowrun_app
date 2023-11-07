import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_network_image.dart';
import 'package:snowrun_app/presentation/core/scroll_physics.dart';
import 'package:snowrun_app/presentation/core/text/title_text.dart';
import 'package:snowrun_app/presentation/riding/edit_riding_room_name_bottom_sheet.dart';
import 'package:snowrun_app/presentation/share/share_button.dart';

class RidingDashboardPage extends StatefulWidget {
  const RidingDashboardPage({super.key});

  @override
  State createState() => RidingDashboardPageState();

  static pushRidingDashboardPage(
    BuildContext context,
  ) {
    context.push(
      '/ridingDashboard',
      // extra: {'url': url, 'title': title ?? ''},
    );
  }
}

class RidingDashboardPageState extends State<RidingDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top + 12,
          ),
          Row(
            children: [
              CommonDetector(
                onTap: () {
                  context.pop();
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  margin: const EdgeInsets.only(
                    left: 16,
                    right: 12,
                    bottom: 4,
                    top: 4,
                  ),
                  decoration: BoxDecoration(
                      color: AppStyle.secondaryBackground.withOpacity(0.95),
                      shape: BoxShape.circle),
                  child: Image.asset(
                    'assets/webp/arrow_left.webp',
                    color: AppStyle.white,
                  ),
                ),
              ),
              const Spacer(),
              const ShareButton(),
            ],
          ),
          const SizedBox(
            height: 36,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            padding: const EdgeInsets.only(
              bottom: 20,
              left: 16,
            ),
            decoration: BoxDecoration(
              color: AppStyle.secondaryBackground.withOpacity(0.95),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Hero(
                          tag: "ridingRoomName",
                          child: TitleText(
                            title: "라이딩 #ADSD",
                            fontSize: 20,
                            color: AppStyle.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    CommonDetector(
                      onTap: () {
                        showEditRidingRoomNameBottomSheet(context);
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, right: 16, left: 12),
                        child: Image.asset(
                          'assets/webp/edit.webp',
                          color: AppStyle.white,
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                const TitleText(
                  title: "현재 36명과 함께 타는 중!",
                  fontSize: 16,
                  color: AppStyle.accentColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: bouncingScrollPhysics,
              padding: const EdgeInsets.only(
                top: 16,
                left: 20,
                right: 20,
              ),
              itemCount: 13,
              itemBuilder: (BuildContext context, int index) {
                return CommonDetector(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      children: [
                        CommonNetworkImage(
                            height: 56,
                            width: 56,
                            imageBackgroundColor: AppStyle.transparent,
                            imageUrl:
                                "https://snowrun-server-bucket-production.s3.ap-northeast-2.amazonaws.com/profile/profile_snow_ball_$index.webp"),
                        const SizedBox(
                          width: 12,
                        ),
                        const TitleText(
                          title: "눈송이 #APIF",
                          fontSize: 16,
                          color: AppStyle.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          CommonDetector(
            onTap: () {
              const isMaster = true;
              showCommonBottomSheet(
                context,
                title: "이 라이딩을 종료하시겠어요?",
                accentDescription: "즐거운 시간 보내셨나요??😆",
                description: isMaster
                    ? "방장님이 라이딩을 종료하면 모든 플레이어들의 라이딩이 종료돼요.\n\n그래도 이 라이딩을 종료하시겠어요?"
                    : "라이딩을 종료하면 참여중인 라이딩 목록에서 이 라이딩이 사라져요.\n\n그래도 이 라이딩을 종료하시겠어요?",
                positiveButtonText: "종료하기",
              );
            },
            child: Container(
              color: AppStyle.secondaryBackground,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              child: const Center(
                child: TitleText(
                  title: "이 라이딩 종료하기",
                  fontSize: 16,
                  color: AppStyle.secondaryTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
