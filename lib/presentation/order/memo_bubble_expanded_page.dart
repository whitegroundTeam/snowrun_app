import 'dart:ffi';

import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/cart/cart_bloc.dart';
import 'package:doortoout/presentation/core/common_button.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/scroll_physics.dart';
import 'package:doortoout/presentation/core/textfield/app_text_field_style.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MemoBubbleExpandedPage extends StatefulWidget {
  final Function? onClose;

  const MemoBubbleExpandedPage({super.key, this.onClose});

  @override
  State createState() => MemoBubbleExpandedPageState();
}

class MemoBubbleExpandedPageState extends State<MemoBubbleExpandedPage> {
  final TextEditingController _memoController = TextEditingController();
  final FocusNode _memoFocusNode = FocusNode();
  bool isFocusedMemo = false;

  @override
  void initState() {
    super.initState();
    _memoController.text = context.read<CartBloc>().state.cart.memo ?? "";
  }

  @override
  void dispose() {
    _memoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartBloc>().state.cart;

    return CommonDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        color: AppStyle.backgroundBlack,
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          physics: bouncingScrollPhysics,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 88),
              Text(
                '메모',
                style: AppTextStyle.headingShadow01,
              ),
              const SizedBox(height: 4),
              Text(
                '고객의 요청사항을 자유롭게 작성하세요.',
                style: AppTextStyle.body01
                    .copyWith(color: AppStyle.white.withOpacity(0.6)),
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
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: CommonButton(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        widget.onClose?.call();
                      },
                      text: "닫기",
                      textColor: AppStyle.white,
                      inActiveTextColor:
                      AppStyle.black.withOpacity(0.3),
                      buttonColor: AppStyle.inactiveBackground,
                      inActiveButtonColor:
                      AppStyle.inactiveBackground,
                      borderRadius: 12,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Expanded(
                    child: CommonButton(
                      onTap: () {
                        context
                            .read<CartBloc>()
                            .add(CartEvent.setMemo(memo: _memoController.text));
                        FocusScope.of(context).unfocus();
                        widget.onClose?.call();
                      },
                      text: "메모 저장하기",
                      // selectButtonBloc: orderButtonBloc,
                      textColor: AppStyle.black,
                      inActiveTextColor: AppStyle.black.withOpacity(0.3),
                      buttonColor: AppStyle.accentColor,
                      inActiveButtonColor: AppStyle.inactiveBackground,
                      borderRadius: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
