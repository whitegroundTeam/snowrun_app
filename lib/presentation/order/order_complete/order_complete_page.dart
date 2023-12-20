import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/presentation/core/appbar/common_app_bar.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_scaffold.dart';
import 'package:snowrun_app/presentation/core/common_tag.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:snowrun_app/presentation/home/home_page.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class OrderCompletePage extends StatefulWidget {
  const OrderCompletePage({
    super.key,
  });

  @override
  State createState() => OrderCompletePageState();

  static goOrderCompletePage(BuildContext context,
      {Function(Object? value)? onResult}) {
    context.go('/order-complete',);
  }

  static pushOrderCompletePage(BuildContext context,
      {Function(Object? value)? onResult}) {
    context
        .push(
          '/order-complete',
        )
        .then((value) => onResult?.call(value));
  }
}

class OrderCompletePageState extends State<OrderCompletePage> {
  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 120,
            child: CustomScrollView(
              slivers: [
                CommonAppBar(
                  isSliver: true,
                  appBarType: AppBarType.close,
                  title: " ",
                  onClickCloseButton: () {
                    HomePage.goHomePage(context);
                  },
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        Text(
                          '주문이 완료되었습니다!',
                          style: AppTextStyle.heading01,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '주문 결제는 렌탈샵에서 진행해주세요.',
                          style: AppTextStyle.body01
                              .copyWith(color: AppStyle.white.withOpacity(0.6)),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          decoration: BoxDecoration(
                            color: AppStyle.inputFieldBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/webp/order_complete_coin.webp",
                                    width: 48,
                                    height: 48,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '총 금액(리프트권 현금 구매 시)',
                                          style: AppTextStyle.heading03,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                '135,000원',
                                                style: AppTextStyle.heading02,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            const CommonTag(
                                              tagName: "할인",
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                height: 1,
                                color: AppStyle.white.withOpacity(0.3),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '리프트권 입금 계좌',
                                    style: AppTextStyle.heading02,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  CommonDetector(
                                    onTap: () {
                                      showToast(context, "계좌번호가 복사되었습니다.");
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(top: 2),
                                      decoration: BoxDecoration(
                                        color: AppStyle.accentColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12, vertical: 6),
                                          child: Text(
                                            '복사',
                                            style: AppTextStyle.body04
                                                .copyWith(color: AppStyle.black),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                '신한은행 110-555-33324 이정열',
                                style: AppTextStyle.body01.copyWith(
                                    color: AppStyle.white.withOpacity(0.6)),
                              ),

                              const SizedBox(
                                height: 24,
                              ),
                              Text(
                                'QR코드로 빠르게 계좌이체하기!',
                                style: AppTextStyle.heading04.copyWith(color: AppStyle.accentOrange),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Image.asset(
                                "assets/png/test_qr.png",
                                width: 64,
                                height: 64,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 32),
                        Container(
                          decoration: BoxDecoration(
                            color: AppStyle.inputFieldBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/webp/order_complete_card.webp",
                                    width: 48,
                                    height: 48,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '총 금액(리프트권 카드 구매 시)',
                                          style: AppTextStyle.heading03,
                                        ),
                                        SizedBox(height: 4,),
                                        Text(
                                          '145,000원',
                                          style: AppTextStyle.heading02,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 120,),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: CommonButton(
              onTap: () {
                HomePage.goHomePage(context);
              },
              text: "홈으로",
              // selectButtonBloc: orderButtonBloc,
              textColor: AppStyle.black,
              inActiveTextColor: AppStyle.black.withOpacity(0.3),
              buttonColor: AppStyle.accentColor,
              inActiveButtonColor: AppStyle.inactiveBackground,
              borderRadius: 12,
            ),
          ),
        ],
      ),
    );
  }
}
