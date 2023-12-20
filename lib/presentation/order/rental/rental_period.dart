import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/rental/actor/rental_actor_bloc.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_dialog.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class RentalPeroid extends StatefulWidget {
  const RentalPeroid({super.key});

  @override
  State createState() => RentalPeroidState();
}

class RentalPeroidState extends State<RentalPeroid> {
  bool isExpanded = true;
  bool isCompleted = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RentalActorBloc, RentalActorState>(
      listener: (context, state) {
        if(state.rental.startAt != null && state.rental.endAt != null) {
          if(!isCompleted && isExpanded) {
            isCompleted = true;
            setState(() {
              isExpanded = false;
            });
          }
        }
      },
      builder: (context, state) {
        final rental = state.rental;
        final startAt = rental.startAt;
        final endAt = rental.endAt;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonDetector(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: Icon(
                        Icons.check_circle_outline_sharp,
                        size: 24.0,
                        color: state.isValidPeriod
                            ? AppStyle.accentGreen
                            : AppStyle.inactiveBackground,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '렌탈 기간',
                      style: AppTextStyle.heading01,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    // const CommonTag(tagName: "필수"),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: Image.asset(
                        isExpanded
                            ? "assets/webp/chevron_up.webp"
                            : "assets/webp/chevron_down.webp",
                        width: 24,
                        height: 24,
                        color: AppStyle.white,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: state.isValidPeriod,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 32,
                  ),
                  Text(
                    state.isValidPeriod && startAt != null && endAt != null
                        ? '${endAt.difference(startAt).inHours}시간 이용하시는군요'
                        : '',
                    style: AppTextStyle.body04.copyWith(
                      color: AppStyle.white.withOpacity(
                        0.6,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '😄',
                    style: AppTextStyle.heading04.copyWith(
                      color: AppStyle.white,
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: isExpanded,
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CommonDetector(
                          onTap: () async {
                            if (rental.startAt != null &&
                                rental.endAt != null) {
                              _showNewRentalDialog(onConfirm: () {
                                _showSetStartAtDialog(context, rental.endAt);
                              });
                            } else {
                              _showSetStartAtDialog(context, rental.endAt);
                            }
                          },
                          child: Container(
                            constraints: const BoxConstraints(
                              minHeight: 108,
                            ),
                            decoration: BoxDecoration(
                              color: AppStyle.inputFieldBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: AppStyle.inputFieldInactiveBorder,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          width: 20,
                                          height: 20,
                                          'assets/webp/calendar_check.webp',
                                          color: AppStyle.accentColor,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "시작일",
                                          style: AppTextStyle.body03.copyWith(
                                            color: AppStyle.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Visibility(
                                    visible: startAt == null,
                                    child: Center(
                                      child: Text(
                                        "눌러서 입력하기",
                                        style: AppTextStyle.body00.copyWith(
                                          color:
                                              AppStyle.white.withOpacity(0.6),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: startAt != null,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        DateFormat('M/d')
                                            .format(startAt ?? DateTime.now()),
                                        style: AppTextStyle.body00.copyWith(
                                          color: AppStyle.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: startAt != null,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        DateFormat('a h:m')
                                            .format(startAt ?? DateTime.now()),
                                        style: AppTextStyle.body01.copyWith(
                                          color: AppStyle.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: CommonDetector(
                          onTap: () async {
                            if (rental.startAt != null &&
                                rental.endAt != null) {
                              _showNewRentalDialog(onConfirm: () {
                                _showSetEndAtDialog(context, rental.startAt);
                              });
                            } else {
                              _showSetEndAtDialog(context, rental.startAt);
                            }
                          },
                          child: Container(
                            constraints: const BoxConstraints(
                              minHeight: 108,
                            ),
                            decoration: BoxDecoration(
                              color: AppStyle.inputFieldBackground,
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: AppStyle.inputFieldInactiveBorder,
                                width: 1,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          width: 20,
                                          height: 20,
                                          'assets/webp/calendar_check.webp',
                                          color: AppStyle.accentColor,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "종료일",
                                          style: AppTextStyle.body03.copyWith(
                                            color: AppStyle.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Visibility(
                                    visible: endAt == null,
                                    child: Text(
                                      "눌러서 입력하기",
                                      style: AppTextStyle.body00.copyWith(
                                        color: AppStyle.white.withOpacity(0.6),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Visibility(
                                    visible: endAt != null,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        DateFormat('M/d')
                                            .format(endAt ?? DateTime.now()),
                                        style: AppTextStyle.body00.copyWith(
                                          color: AppStyle.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: endAt != null,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        DateFormat('a h:m')
                                            .format(endAt ?? DateTime.now()),
                                        style: AppTextStyle.body01.copyWith(
                                          color: AppStyle.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  _showSetEndAtDialog(BuildContext context, DateTime? startAt) async {
    DateTime? dateTime = await showOmniDateTimePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1600).subtract(const Duration(days: 3652)),
      lastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      is24HourMode: false,
      isShowSeconds: false,
      minutesInterval: 1,
      secondsInterval: 1,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      constraints: const BoxConstraints(
        maxWidth: 350,
        maxHeight: 650,
      ),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1.drive(
            Tween(
              begin: 0,
              end: 1,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: false,
    );

    if (startAt != null && dateTime != null) {
      dateTime.compareTo(startAt) > 0
          ? context
              .read<RentalActorBloc>()
              .add(RentalActorEvent.setEndAt(endAt: dateTime))
          : showToast(context, "종료일은 시작일보다 작을 수 없어요.");
    } else {
      context
          .read<RentalActorBloc>()
          .add(RentalActorEvent.setEndAt(endAt: dateTime));
    }
  }

  _showSetStartAtDialog(BuildContext context, DateTime? endAt) async {
    DateTime? dateTime = await showOmniDateTimePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1600).subtract(const Duration(days: 3652)),
      lastDate: DateTime.now().add(
        const Duration(days: 3652),
      ),
      is24HourMode: false,
      isShowSeconds: false,
      minutesInterval: 1,
      secondsInterval: 1,
      borderRadius: const BorderRadius.all(Radius.circular(16)),
      constraints: const BoxConstraints(
        maxWidth: 350,
        maxHeight: 650,
      ),
      transitionBuilder: (context, anim1, anim2, child) {
        return FadeTransition(
          opacity: anim1.drive(
            Tween(
              begin: 0,
              end: 1,
            ),
          ),
          child: child,
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
    );

    if (endAt != null && dateTime != null) {
      endAt.compareTo(dateTime) > 0
          ? context
              .read<RentalActorBloc>()
              .add(RentalActorEvent.setStartAt(startAt: dateTime))
          : showToast(context, "종료일은 시작일보다 작을 수 없어요.");
    } else {
      context
          .read<RentalActorBloc>()
          .add(RentalActorEvent.setStartAt(startAt: dateTime));
    }
  }

  _showNewRentalDialog({required Function onConfirm}) async {
    await showCommonDialog(context,
        buttonText: "네",
        title: "정보를 변경하시겠어요?",
        description: "날짜 변경 후 장비, 의류, 부가장비를 다시 선택해주세요",
        negativeButtonText: "아니요", onPressedButton: () async {
      context.pop();
      onConfirm.call();
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }
}
