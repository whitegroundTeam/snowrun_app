import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/auth/auth_bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/application/home/refresh/home_refresh_bloc.dart';
import 'package:doortoout/application/magazine/magazine_bloc.dart';
import 'package:doortoout/application/riding/riding_list/riding_list_bloc.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_network_image.dart';
import 'package:doortoout/presentation/core/scroll_physics.dart';
import 'package:doortoout/presentation/magazine/magazine_deetail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/typography/app_text_style.dart';

class HomeMagazineWidget extends StatefulWidget {
  const HomeMagazineWidget({super.key});

  @override
  State createState() => HomeMagazineWidgetState();
}

class HomeMagazineWidgetState extends State<HomeMagazineWidget> {
  final magazineListBloc = getIt<MagazineBloc>();

  final images = [
    "https://doortoout.s3.ap-northeast-2.amazonaws.com/operate/magazine_test/magazine_1.JPG",
    "https://doortoout.s3.ap-northeast-2.amazonaws.com/operate/magazine_test/magazine_2.JPG",
    "https://doortoout.s3.ap-northeast-2.amazonaws.com/operate/magazine_test/magazine_0.png"
  ];
  final subtitles = ["R&T", "GO 대관령트레일런", "PEAKFFICE"];
  final titles = [
    "알앤티버거하우스이야기",
    "러닝의 새로운 기준, Go대관령틀레일런",
    "해발고도 777m, 꼭대기에 위치한 오피스"
  ];
  final descriptions = ["11/30", "9/3", "5/15"];

  final contentTitleList = [];
  final contentBodyList = [];

  @override
  void initState() {
    super.initState();
    magazineListBloc.add(const MagazineEvent.getMagazines(start: 0));
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MagazineBloc>(
            create: (context) => magazineListBloc,
          ),
          BlocListener<HomeRefreshBloc, HomeRefreshState>(
            bloc: context.read<HomeRefreshBloc>(),
            listener: (context, state) {
              magazineListBloc.add(const MagazineEvent.getMagazines(start: 0));
            },
          ),
        ],
        child: Stack(
          children: [
            BlocBuilder<MagazineBloc, MagazineState>(
              bloc: magazineListBloc,
              builder: (context, state) {
                final magazines = state.magazines;
                return ListView.builder(
                    physics: neverScrollableScrollPhysics,
                    shrinkWrap: true,
                    itemCount: magazines.length,
                    padding: const EdgeInsets.only(
                      top: 48,
                    ),
                    itemBuilder: (context, index) {
                      if (state.status != DefaultStatus.success) {
                        return Container();
                      }

                      final magazine = magazines[index];
                      return CommonDetector(
                        onTap: () {
                          MagazineDetailPage.pushMagazineDetailPage(
                              context, magazine, index);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              bottom: 8, top: 8, left: 16, right: 16),
                          height: MediaQuery.sizeOf(context).width,
                          width: MediaQuery.sizeOf(context).width,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                        index % 2 != 0 ? 16.0 : 1000.0),
                                    child: CommonNetworkImage(
                                        height: MediaQuery.sizeOf(context).width,
                                        width: MediaQuery.sizeOf(context).width,
                                        imageUrl:images[index]),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                    child: Container(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 4.0),
                                            decoration: const BoxDecoration(
                                              color: AppStyle.background,
                                              border: Border(
                                                right: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                                left: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                                top: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8),
                                                topRight: Radius.circular(8),
                                              ),
                                            ),
                                            child: Text(
                                              // magazine.title.getOrCrash(),
                                              subtitles[index],
                                              style: AppTextStyle.body01.copyWith(
                                                  color: AppStyle.black),
                                            ),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(
                                              color: AppStyle.background,
                                              border: Border(
                                                left: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                              ),
                                            ),
                                            child: Container(
                                              padding: const EdgeInsets.all(8.0),
                                              decoration: const BoxDecoration(
                                                color: AppStyle.background,
                                                border: Border(
                                                  right: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                  // left: BorderSide(
                                                  //   color: AppStyle.black,
                                                  //   width: 1,
                                                  // ),
                                                  top: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                  bottom: BorderSide(
                                                    color: AppStyle.black,
                                                    width: 1,
                                                  ),
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                              ),
                                              child: Text(
                                                // "즐거운 대관령생활 감자빵을 아시나요? 난 몰라요",
                                                titles[index],
                                                style: AppTextStyle.heading01
                                                    .copyWith(
                                                        color: AppStyle.black),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 8.0, vertical: 4.0),
                                            decoration: const BoxDecoration(
                                              color: AppStyle.background,
                                              border: Border(
                                                right: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                                left: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                                bottom: BorderSide(
                                                  color: AppStyle.black,
                                                  width: 1,
                                                ),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(8),
                                                bottomRight: Radius.circular(8),
                                              ),
                                            ),
                                            child: Text(
                                              descriptions[index],
                                              style: AppTextStyle.body01.copyWith(
                                                  color: AppStyle.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              },
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              // 원하는 디자인에 맞춰 중앙 정렬
              child: FadeInUp(
                from: 40,
                delay: const Duration(milliseconds: 1000),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Image.asset(
                    'assets/webp/peak_icon.webp',
                    color: const Color(0xff2F2F2F),
                    height: 96,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
