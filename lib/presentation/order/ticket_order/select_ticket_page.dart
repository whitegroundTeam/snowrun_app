import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/rental_shop/rental_shop_bloc.dart';
import 'package:doortoout/application/time_ticket/time_ticket_actor_bloc.dart';
import 'package:doortoout/domain/activity_center/model/date_time_tickets.dart';
import 'package:doortoout/domain/rental/model/rental.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/appbar/common_app_bar.dart';
import 'package:doortoout/presentation/core/common_button.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_dialog.dart';
import 'package:doortoout/presentation/core/common_scaffold.dart';
import 'package:doortoout/presentation/core/common_title.dart';
import 'package:doortoout/presentation/core/toast/common_toast.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/utils/price_util.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:omni_datetime_picker/omni_datetime_picker.dart';

class SelectTicketPage extends StatefulWidget {
  final Rental? rental;

  const SelectTicketPage({
    super.key,
    this.rental,
  });

  @override
  State createState() => SelectTicketPageState();

  static pushSelectTicketPage(BuildContext context, Rental? rental,
      {Function(Object? value)? onResult}) {
    context
        .push(
          '/select-ticket',
        )
        .then((value) => onResult?.call(value));
  }
}

class SelectTicketPageState extends State<SelectTicketPage> {
  final timeTicketActorBloc = getIt<TimeTicketActorBloc>();

  @override
  void initState() {
    super.initState();

    //TODO : 날짜만 세팅하고 권종을 선택해줄까 -> 좀 복잡스럽네
    WidgetsBinding.instance.addPostFrameCallback((_) {
      timeTicketActorBloc
          .add(TimeTicketActorEvent.init(rental: widget.rental));
    });
  }

  @override
  Widget build(BuildContext context) {
    final rentalShop = context.read<RentalShopBloc>().state.rentalShop;

    return MultiBlocProvider(
      providers: [
        BlocProvider<TimeTicketActorBloc>(
          create: (context) => timeTicketActorBloc,
        ),
        BlocListener<TimeTicketActorBloc, TimeTicketActorState>(
          bloc: timeTicketActorBloc,
          listener: (context, state) {
            if (state.updateStatus == UpdateStatus.updatedStartAt ||
                state.updateStatus == UpdateStatus.updatedEndAt) {
              timeTicketActorBloc
                  .add(const TimeTicketActorEvent.getTiemTickets());
            }
          },
        ),
      ],
      child: BlocBuilder<TimeTicketActorBloc, TimeTicketActorState>(
        builder: (context, state) {
          final startAt = state.startAt;
          final endAt = state.endAt;

          return CommonScaffold(
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: CustomScrollView(
                    slivers: [
                      CommonAppBar(
                        isSliver: true,
                        appBarType: AppBarType.close,
                        title: "리프트권 추가",
                        onClickCloseButton: () {
                          context.pop();
                        },
                      ),
                      SliverToBoxAdapter(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 16,
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: CommonTitle(
                                title: "이용 기간",
                                isRequired: true,
                                horizontalPadding: 8,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: CommonDetector(
                                      onTap: () async {
                                        if (state.startAt != null &&
                                            state.endAt != null) {
                                          _showNewRentalDialog(onConfirm: () {
                                            _showSetStartAtDialog(
                                                context, startAt);
                                          });
                                        } else {
                                          _showSetStartAtDialog(context, endAt);
                                        }
                                      },
                                      child: Container(
                                        constraints: const BoxConstraints(
                                          minHeight: 108,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppStyle.inputFieldBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: AppStyle
                                                .inputFieldInactiveBorder,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
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
                                                      color:
                                                          AppStyle.accentColor,
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      "시작일",
                                                      style: AppTextStyle.body03
                                                          .copyWith(
                                                        color: AppStyle.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
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
                                                    style: AppTextStyle.body00
                                                        .copyWith(
                                                      color: AppStyle.white
                                                          .withOpacity(0.6),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Visibility(
                                                visible: startAt != null,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    DateFormat('M/d').format(
                                                        startAt ??
                                                            DateTime.now()),
                                                    style: AppTextStyle.body00
                                                        .copyWith(
                                                      color: AppStyle.white,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                              Visibility(
                                                visible: startAt != null,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text(
                                                    DateFormat('a h:m').format(
                                                        startAt ??
                                                            DateTime.now()),
                                                    style: AppTextStyle.body01
                                                        .copyWith(
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
                                        if (startAt != null && endAt != null) {
                                          _showNewRentalDialog(onConfirm: () {
                                            _showSetEndAtDialog(
                                                context, startAt);
                                          });
                                        } else {
                                          _showSetEndAtDialog(context, startAt);
                                        }
                                      },
                                      child: Container(
                                        constraints: const BoxConstraints(
                                          minHeight: 108,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppStyle.inputFieldBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: AppStyle
                                                .inputFieldInactiveBorder,
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
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Image.asset(
                                                        width: 20,
                                                        height: 20,
                                                        'assets/webp/calendar_check.webp',
                                                        color: AppStyle
                                                            .accentColor,
                                                      ),
                                                      const SizedBox(
                                                        width: 4,
                                                      ),
                                                      Text(
                                                        "종료일",
                                                        style: AppTextStyle
                                                            .body03
                                                            .copyWith(
                                                          color: AppStyle.white,
                                                        ),
                                                        textAlign:
                                                            TextAlign.center,
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
                                                    style: AppTextStyle.body00
                                                        .copyWith(
                                                      color: AppStyle.white
                                                          .withOpacity(0.6),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: endAt != null,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                      DateFormat('M/d').format(
                                                          endAt ??
                                                              DateTime.now()),
                                                      style: AppTextStyle.body00
                                                          .copyWith(
                                                        color: AppStyle.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                Visibility(
                                                  visible: endAt != null,
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Text(
                                                      DateFormat('a h:m')
                                                          .format(endAt ??
                                                              DateTime.now()),
                                                      style: AppTextStyle.body01
                                                          .copyWith(
                                                        color: AppStyle.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 12,
                                                ),
                                              ],
                                            )),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 0.5,
                              color: AppStyle.white.withOpacity(0.25),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CommonDetector(
                              onTap: () {
                                timeTicketActorBloc.add(
                                    const TimeTicketActorEvent
                                        .selectAdultButton());
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    width: 24,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "성인이신가요?",
                                          style:
                                              AppTextStyle.heading02.copyWith(
                                            color: AppStyle.white,
                                          ),
                                        ),
                                        Text(
                                          "성인 리프트권 기준은 ${rentalShop.operationInfo.adultAge.getOrCrash()}세 입니다",
                                          style: AppTextStyle.body03.copyWith(
                                            color:
                                                AppStyle.white.withOpacity(0.6),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: 48,
                                    height: 48,
                                    child: Center(
                                      child: Image.asset(
                                        width: state.isAdult ? 48 : 32,
                                        height: state.isAdult ? 48 : 32,
                                        color: state.isAdult
                                            ? null
                                            : AppStyle.white.withOpacity(0.3),
                                        state.isAdult
                                            ? 'assets/webp/check_active.webp'
                                            : 'assets/webp/check_inactive.webp',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 32,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 0.5,
                              color: AppStyle.white.withOpacity(0.25),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "당일 최저 비용의 리프트권 추천",
                                style: AppTextStyle.heading03.copyWith(
                                  color: AppStyle.white.withOpacity(0.6),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                              ),
                              child: Text(
                                "이용할 기간의 이용권만 선택해주세요",
                                style: AppTextStyle.body03.copyWith(
                                  color: AppStyle.white.withOpacity(0.4),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int dateIndex) {
                            final dateTimeTickets =
                                state.dateTimeTickets[dateIndex];

                            // Format the date for display

                            final formattedDate = dateTimeTickets.startAt !=
                                    null
                                ? DateFormat.yMMMMEEEEd(
                                        context.locale.toString())
                                    .format(
                                        dateTimeTickets.startAt!.getOrCrash())
                                : '';

                            return Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title with dynamic date for each DateTimeTickets
                                  Text(formattedDate,
                                      style: AppTextStyle.heading05.copyWith(
                                        color: AppStyle.white.withOpacity(0.6),
                                      )),
                                  const SizedBox(height: 16),
                                  // Wrap with Container Buttons for each TimeTicket within the current DateTimeTickets
                                  Wrap(
                                    spacing: 8.0,
                                    runSpacing: 8.0,
                                    children: dateTimeTickets.timeTickets
                                        .getOrCrash()
                                        .map((timeTicket) {
                                      return CommonDetector(
                                        onTap: () {
                                          timeTicketActorBloc.add(
                                              TimeTicketActorEvent
                                                  .selectTimeTicket(
                                                      timeTicket: timeTicket));
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16.0,
                                            vertical: 8.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: timeTicket.isSelected == true
                                                ? AppStyle.black
                                                : AppStyle.transparent,
                                            border: Border.all(
                                              color:
                                                  timeTicket.isSelected == true
                                                      ? AppStyle.accentColor
                                                      : AppStyle.white
                                                          .withOpacity(0.1),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(999.0),
                                          ),
                                          child: Text(
                                            "${timeTicket.name.getOrCrash()} - ${priceText(timeTicket.price)}",
                                            style: AppTextStyle.body02.copyWith(
                                              color:
                                                  timeTicket.isSelected == true
                                                      ? AppStyle.accentColor
                                                      : AppStyle.white,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            );
                          },
                          childCount: state.dateTimeTickets.length,
                        ),
                      ),
                      const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 120,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 20,
                  right: 20,
                  bottom: 16,
                  child: CommonButton(
                    onTap: () {
                      //TODO : valid 여부에 isValidPeriod 넣어야함
                      if (state.isValidPeriod) {
                        context.pop(state.dateTimeTickets);
                      }
                    },
                    text: "완료",
                    // selectButtonBloc: orderButtonBloc,
                    textColor: state.isValidPeriod == true
                        ? AppStyle.black
                        : AppStyle.white,
                    inActiveTextColor: AppStyle.black.withOpacity(0.3),
                    buttonColor: state.isValidPeriod == true
                        ? AppStyle.accentColor
                        : AppStyle.inactiveBackground,
                    inActiveButtonColor: AppStyle.inactiveBackground,
                    borderRadius: 12,
                  ),
                ),
              ],
            ),
          );
        },
      ),
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
      barrierDismissible: true,
    );

    if (startAt != null && dateTime != null) {
      dateTime.compareTo(startAt) > 0
          ? context
              .read<TimeTicketActorBloc>()
              .add(TimeTicketActorEvent.setEndAt(endAt: dateTime))
          : showToast(context, "종료일은 시작일보다 작을 수 없어요.");
    } else {
      context
          .read<TimeTicketActorBloc>()
          .add(TimeTicketActorEvent.setEndAt(endAt: dateTime));
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
              .read<TimeTicketActorBloc>()
              .add(TimeTicketActorEvent.setStartAt(startAt: dateTime))
          : showToast(context, "종료일은 시작일보다 작을 수 없어요.");
    } else {
      context
          .read<TimeTicketActorBloc>()
          .add(TimeTicketActorEvent.setStartAt(startAt: dateTime));
    }
  }

  _showNewRentalDialog({required Function onConfirm}) async {
    await showCommonDialog(context,
        buttonText: "네",
        title: "정보를 변경하시겠어요?",
        description: "날짜 변경 시 선택한 리프트권이 초기화돼요!",
        negativeButtonText: "아니요", onPressedButton: () async {
      context.pop();
      onConfirm.call();
    }, onPressedNegativeButton: () {
      context.pop();
    });
  }
}
