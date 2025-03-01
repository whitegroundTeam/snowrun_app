import 'dart:ui';

import 'package:animate_do/animate_do.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/cart/cart_bloc.dart';
import 'package:doortoout/application/rental_shop/rental_shop_bloc.dart';
import 'package:doortoout/domain/rental_shop/model/rental_shop.dart';
import 'package:doortoout/presentation/core/appbar/common_app_bar.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_scaffold.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/presentation/order/order_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SelectActivityCenterPage extends StatefulWidget {
  const SelectActivityCenterPage({
    super.key,
  });

  @override
  State createState() => SelectActivityCenterPageState();

  static pushSelectAtivityCenterPage(BuildContext context, {Function(Object? value)? onResult}){
    context.push(
      '/select-activity-center',
    ).then((value) => onResult?.call(value));
  }
}

class SelectActivityCenterPageState extends State<SelectActivityCenterPage> {
  @override
  Widget build(BuildContext context) {
    final rentalShopBloc = context.read<RentalShopBloc>();
    final cartBloc = context.read<CartBloc>();

    return MultiBlocProvider(
      providers: [
        BlocProvider<RentalShopBloc>(
          create: (context) => rentalShopBloc,
        ),
      ],
      child: BlocBuilder<RentalShopBloc, RentalShopState>(
        bloc: context.read<RentalShopBloc>(),
        builder: (context, state) {
          RentalShop rentalShop = state.rentalShop;
          return CommonScaffold(
            //TODO : 고객앱 BUBBLE 기획확정 후 수정
            // useDraggableBubble: false,
            // backgroundImageUrl:
            //     rentalShop.contentMedias.getOrCrash().isNotEmpty == true
            //         ? rentalShop.contentMedias
            //             .getOrCrash()
            //             .first
            //             .url
            //             .getOrCrash()
            //         : "",
            body: CustomScrollView(
              physics: const BouncingScrollPhysics(),
              slivers: [
                CommonAppBar(
                  appBarType: AppBarType.back,
                  backgroundColor: Colors.black.withOpacity(0.05),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FadeIn(
                          duration: const Duration(milliseconds: 800),
                          child: Text("어느곳을 방문하시나요?",
                              style: AppTextStyle.heading04),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        FadeIn(
                          duration: const Duration(milliseconds: 800),
                          child: Text(
                              "${rentalShop.name.getOrCrash()}은\n아래 시설들을 지원합니다.",
                              style: AppTextStyle.headingShadow01),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        FadeIn(
                          duration: const Duration(milliseconds: 800),
                          child: Text("이용하시려는 시설을 선택해주세요.",
                              style: AppTextStyle.body01.copyWith(
                                  color: AppStyle.white.withOpacity(0.6))),
                        ),
                        const SizedBox(
                          height: 44,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 20,
                  ),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16.0,
                      crossAxisSpacing: 16.0,
                      childAspectRatio: 1.0,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        final activityCenter =
                            rentalShop.activityCenters.getOrCrash()[index];
                        return CommonDetector(
                          onTap: () async {
                            cartBloc.add(CartEvent.selectActivityCenter(
                                activityCenter: activityCenter));
                            context.pop();
                            OrderPage.pushOrderPage(
                              context,
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(32),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8),
                                decoration: BoxDecoration(
                                  color: AppStyle.black.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(32),
                                  border: Border.all(
                                      color: AppStyle.accentColor, width: 1),
                                ),
                                child: Center(
                                  child: Text(
                                    activityCenter.name.getOrCrash(),
                                    style: AppTextStyle.headingShadow01
                                        .copyWith(color: AppStyle.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      childCount:
                          rentalShop.activityCenters.getOrCrash().length,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
