import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/cart/cart_bloc.dart';
import 'package:doortoout/presentation/core/appbar/common_app_bar.dart';
import 'package:doortoout/presentation/core/common_button.dart';
import 'package:doortoout/presentation/core/common_scaffold.dart';
import 'package:doortoout/presentation/core/common_tag.dart';
import 'package:doortoout/presentation/core/common_title.dart';
import 'package:doortoout/presentation/core/textfield/app_text_field_style.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/presentation/order/order_complete/order_complete_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OrderCheckPage extends StatefulWidget {
  const OrderCheckPage({
    super.key,
  });

  @override
  State createState() => OrderCheckPageState();

  static pushOrderCheckPage(BuildContext context,
      {Function(Object? value)? onResult}) {
    context
        .push(
          '/order-check',
        )
        .then((value) => onResult?.call(value));
  }
}

class OrderCheckPageState extends State<OrderCheckPage> {
  final TextEditingController _memoController = TextEditingController();
  final FocusNode _memoFocusNode = FocusNode();
  bool isFocusedmemo = false;

  @override
  void initState() {
    super.initState();
    _memoController.text = context.read<CartBloc>().state.cart.memo ?? "";
    _memoController.addListener(() {
      // context
      //     .read<CartBloc>()
      //     .add(CartEvent.setMemo(memo: _memoController.text));
    });
    _memoFocusNode.addListener(() {
      setState(() {
        isFocusedmemo = _memoFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _memoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: CustomScrollView(
              slivers: [
                CommonAppBar(
                  isSliver: true,
                  appBarType: AppBarType.close,
                  title: " ",
                  onClickCloseButton: () {
                    context.pop();
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
                          '주문 내역을 확인해주세요',
                          style: AppTextStyle.headingShadow01,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '모든 주문 결제는 렌탈샵에서 진행해주세요.',
                          style: AppTextStyle.body01
                              .copyWith(color: AppStyle.white.withOpacity(0.6)),
                        ),
                        const SizedBox(height: 32),
                        const CommonTitle(
                          title: "메모",
                        ),
                        const SizedBox(height: 12),
                        TextFormField(
                          controller: _memoController,
                          keyboardType: TextInputType.name,
                          maxLines: 8,
                          cursorColor: AppStyle.white,
                          focusNode: _memoFocusNode,
                          decoration: AppTextFieldStyle.inputfield.copyWith(
                            hintText: '여기를 눌러 입력해주세요',
                          ),
                          style: AppTextStyle.body01.copyWith(
                            color: AppStyle.white,
                          ),
                          // onChanged: (value) => context
                          //     .read<RentalActorBloc>()
                          //     .add(RentalActorEvent.setName(name: value)),
                          // validator: (_) {
                          //   return context
                          //       .read<SignInFormBloc>()
                          //       .state
                          //       .emailAddress
                          //       .value
                          //       .fold(
                          //         (f) => f.maybeMap(
                          //       invalidEmail: (_) {
                          //         // _hideLoading();
                          //         return '유효한 이메일 주소가 아닙니다.';
                          //       },
                          //       orElse: () => null,
                          //     ),
                          //         (r) => null,
                          //   );
                          // },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 28,
                            bottom: 20,
                          ),
                          decoration: BoxDecoration(
                            color: AppStyle.inputFieldBackground,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '총 주문액(리프트권 현금 구매 시)',
                                style: AppTextStyle.heading04,
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Text(
                                '145,000원',
                                style: AppTextStyle.body04.copyWith(
                                  color: AppStyle.white.withOpacity(0.6),
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2.0,
                                  decorationColor:
                                      AppStyle.white.withOpacity(0.6),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '135,000원',
                                    style: AppTextStyle.body02,
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const CommonTag(
                                    tagName: "할인",
                                  ),
                                ],
                              ),
                              Text(
                                '리프트권 카드 구매 시 총 주문액 145,000원',
                                style: AppTextStyle.caption01.copyWith(
                                  color: AppStyle.white.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 120,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 16,
            child: CommonButton(
              onTap: () {
                FocusScope.of(context).unfocus();
                context
                    .read<CartBloc>()
                    .add(CartEvent.setMemo(memo: _memoController.text));
                OrderCompletePage.goOrderCompletePage(context);
              },
              text: "주문 완료",
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
