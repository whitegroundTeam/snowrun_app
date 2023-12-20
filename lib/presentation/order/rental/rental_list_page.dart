import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/cart/cart_bloc.dart';
import 'package:snowrun_app/application/order/order_bloc.dart';
import 'package:snowrun_app/domain/activity_center/model/date_time_tickets.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/presentation/body_spec/body_spec_converter.dart';
import 'package:snowrun_app/presentation/core/appbar/underline_text.dart';
import 'package:snowrun_app/presentation/core/bottomsheet/common_bottom_sheet.dart';
import 'package:snowrun_app/presentation/core/bullet_text.dart';
import 'package:snowrun_app/presentation/core/common_button.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/constants.dart';
import 'package:snowrun_app/presentation/core/toast/common_toast.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:snowrun_app/presentation/order/create_rental/create_rental_page.dart';
import 'package:snowrun_app/presentation/order/ticket_order/select_ticket_page.dart';
import 'package:snowrun_app/utils/price_util.dart';
import 'package:snowrun_app/utils/text_utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:drop_shadow/drop_shadow.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RentalListPage extends StatefulWidget {
  const RentalListPage({
    super.key,
  });

  @override
  State createState() => RentalListPageState();
}

class RentalListPageState extends State<RentalListPage> {
  @override
  Widget build(BuildContext context) {
    final cartBloc = context.read<CartBloc>();
    final cart = cartBloc.state.cart;

    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        final rentals = state.cart.rentals ?? [];
        return rentals.isNotEmpty == true
            ? ListView.builder(
                itemCount: rentals.length,
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.only(
                  bottom: 120,
                ),
                itemBuilder: (BuildContext context, int index) {
                  final rental = rentals[index];
                  final age = rental.age;
                  String ageText = "";
                  if (age != null) {
                    ageText =
                        "${Constants.agePrefix}${capitalizeFirstLetter(age.name)}"
                            .tr();
                  }

                  final gender = rental.gender;
                  String genderText = "";
                  if (gender != null) {
                    genderText =
                        "${Constants.genderPrefix}${capitalizeFirstLetter(gender.name)}"
                            .tr();
                  }

                  final contact = rental.contact;
                  String contactPhoneNumberText = "";
                  String contactCountryCodeText = "";

                  if (contact?.countryCode.getOrCrash().isNotEmpty == true) {
                    contactCountryCodeText =
                        contact?.countryCode.getOrCrash() ?? '';
                  }
                  if (contact?.phoneNumber.getOrCrash().isNotEmpty == true) {
                    contactPhoneNumberText = contactCountryCodeText.isNotEmpty
                        ? '${contactCountryCodeText.isNotEmpty}'
                        : '' '${contact?.phoneNumber.getOrCrash()}' ?? '';
                  }

                  String contactEmailText = "";
                  if (contact?.email.getOrCrash().isNotEmpty == true) {
                    contactEmailText = contact?.email.getOrCrash() ?? '';
                  }

                  String contactText = "";
                  if (contactEmailText.isNotEmpty == true &&
                      contactPhoneNumberText.isNotEmpty == true) {
                    contactText =
                        "/ $contactPhoneNumberText / $contactEmailText";
                  } else if (contactEmailText.isNotEmpty == true) {
                    contactText = "/ $contactEmailText";
                  } else if (contactPhoneNumberText.isNotEmpty == true) {
                    contactText = "/ $contactPhoneNumberText";
                  }

                  // rental.mainEquipmentsRentalProduct.options.forEach((element) {
                  //   print(element);
                  // });

                  return Column(
                    children: [
                      if (index == 0) ...{
                        Row(
                          children: [
                            const Expanded(child: SizedBox()),
                            CommonDetector(
                              onTap: () {
                                CreateRentalPage.pushCreateRentalPage(
                                    context, null, onResult: (value) {
                                  Rental? newRental = value as Rental?;
                                  if (newRental != null) {
                                    context.read<CartBloc>().add(
                                        CartEvent.addRental(rental: newRental));
                                  }
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: AppStyle.accentOrange,
                                    width: 0.5,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                margin: const EdgeInsets.only(
                                  top: 24,
                                  left: 24,
                                  right: 24,
                                ),
                                child: Text(
                                  "+ 렌탈 추가하기",
                                  style: AppTextStyle.heading03
                                      .copyWith(color: AppStyle.accentOrange),
                                ),
                              ),
                            ),
                          ],
                        ),
                      },
                      DropShadow(
                        blurRadius: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppStyle.black,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: AppStyle.white.withOpacity(0.35),
                              width: 0.5,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppStyle.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color:
                                              AppStyle.white.withOpacity(0.1),
                                          width: 1,
                                        ),
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      child: Text(
                                        "${index + 1}",
                                        style: AppTextStyle.heading01
                                            .copyWith(color: AppStyle.black),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          rental.name.getOrCrash(),
                                          style: AppTextStyle.heading03
                                              .copyWith(color: AppStyle.white),
                                        ),
                                        Text(
                                          '$ageText / $genderText $contactText',
                                          style: AppTextStyle.body03.copyWith(
                                            color: AppStyle.white.withOpacity(
                                              0.6,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  CommonDetector(
                                    onTap: () {
                                      CreateRentalPage.pushCreateRentalPage(
                                          context, rental, onResult: (value) {
                                        Rental? newRental = value as Rental?;
                                        if (newRental != null) {
                                          context.read<CartBloc>().add(
                                              CartEvent.editRental(
                                                  rental: newRental));
                                        }
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 12,
                                          top: 8,
                                          bottom: 16,
                                          right: 8),
                                      child: Image.asset(
                                        'assets/webp/edit.webp',
                                        height: 28,
                                        width: 28,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  CommonDetector(
                                    onTap: () {
                                      showCommonBottomSheet(context,
                                          title: "정말 삭제하시겠어요?",
                                          description: "고르신 렌탈 정보가 삭제됩니다😊",
                                          positiveButtonText: "삭제하기",
                                          negativeButtonText: "취소",
                                          onClickPositiveButton: () {
                                        cartBloc.add(CartEvent.removeRental(
                                            rental: rental));
                                        context.pop();
                                      }, onClickNegativeButton: () {
                                        context.pop();
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8,
                                          top: 8,
                                          bottom: 16,
                                          right: 16),
                                      child: Image.asset(
                                        'assets/webp/close.webp',
                                        height: 28,
                                        width: 28,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                          right: 4,
                                          top: 2,
                                        ),
                                        child: Image.asset(
                                          width: 20,
                                          height: 20,
                                          'assets/webp/man.webp',
                                          color: AppStyle.accentColor,
                                        ),
                                      ),
                                      Text(
                                        "키",
                                        style: AppTextStyle.heading03
                                            .copyWith(color: AppStyle.white),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        '${rental.bodySpec?.height?.range?.start.getOrCrash().toStringAsFixed(rental.bodySpec?.height?.range?.decimalPlaces.getOrCrash() ?? 0)} ~ ${rental.bodySpec?.height?.range?.end.getOrCrash().toStringAsFixed(rental.bodySpec?.height?.range?.decimalPlaces.getOrCrash() ?? 0)} ${"${Constants.heightUnitPrefix}${capitalizeFirstLetter(rental.bodySpec?.height?.unit.name ?? '')}".tr()}',
                                        style: AppTextStyle.body01
                                            .copyWith(color: AppStyle.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                          right: 4,
                                          top: 2,
                                        ),
                                        child: Image.asset(
                                          width: 20,
                                          height: 20,
                                          'assets/webp/scale.webp',
                                          color: AppStyle.accentColor,
                                        ),
                                      ),
                                      Text(
                                        "체중",
                                        style: AppTextStyle.heading03
                                            .copyWith(color: AppStyle.white),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        '${rental.bodySpec?.weight?.range?.start.getOrCrash().toStringAsFixed(rental.bodySpec?.weight?.range?.decimalPlaces.getOrCrash() ?? 0)} ~ ${rental.bodySpec?.weight?.range?.end.getOrCrash().toStringAsFixed(rental.bodySpec?.weight?.range?.decimalPlaces.getOrCrash() ?? 0)} ${"${Constants.weightUnitPrefix}${capitalizeFirstLetter(rental.bodySpec?.weight?.unit.name ?? '')}".tr()}',
                                        style: AppTextStyle.body01
                                            .copyWith(color: AppStyle.white),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 20,
                                          right: 4,
                                          top: 2,
                                        ),
                                        child: Image.asset(
                                          width: 20,
                                          height: 20,
                                          'assets/webp/shoe.webp',
                                          color: AppStyle.accentColor,
                                        ),
                                      ),
                                      Text(
                                        "발 사이즈",
                                        style: AppTextStyle.heading03
                                            .copyWith(color: AppStyle.white),
                                      ),
                                      const SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        "${rental.bodySpec?.footSize?.value?.value.getOrCrash().toStringAsFixed(rental.bodySpec?.footSize?.value?.decimalPlaces.getOrCrash() ?? 0)} ${"${Constants.footSizeUnitPrefix}${capitalizeFirstLetter(rental.bodySpec?.footSize?.unit.name ?? '')}".tr()}",
                                        style: AppTextStyle.body01
                                            .copyWith(color: AppStyle.white),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 12,
                                    ),
                                    child: Text(
                                      "시작",
                                      style: AppTextStyle.heading03
                                          .copyWith(color: AppStyle.white),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        DateFormat.yMMMMEEEEd(
                                                context.locale.toString())
                                            .add_jm()
                                            .format(rental.startAt ??
                                                DateTime.now()),
                                        style: AppTextStyle.body03
                                            .copyWith(color: AppStyle.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      right: 12,
                                    ),
                                    child: Text(
                                      "반납",
                                      style: AppTextStyle.heading03
                                          .copyWith(color: AppStyle.white),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        DateFormat.yMMMMEEEEd(
                                                context.locale.toString())
                                            .add_jm()
                                            .format(
                                                rental.endAt ?? DateTime.now()),
                                        style: AppTextStyle.body03
                                            .copyWith(color: AppStyle.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 20,
                                  right: 12,
                                ),
                                child: Text(
                                  "대여장비",
                                  style: AppTextStyle.heading03
                                      .copyWith(color: AppStyle.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ...rental.mainEquipmentsRentalProduct
                                        .productOptions
                                        .getOrCrash()
                                        .map((option) {
                                      final optionDescription =
                                          option.title.getOrCrash();
                                      final optionItemsDescription = option
                                          .optionItems
                                          .getOrCrash()
                                          .map((item) =>
                                              "${item.title.getOrCrash()}(${priceText(item.price)})")
                                          .join(",");

                                      return RichText(
                                        text: TextSpan(
                                          style: AppTextStyle.body01.copyWith(
                                              color: AppStyle.white
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.bold),
                                          text: optionDescription,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  " / $optionItemsDescription",
                                              style: AppTextStyle.body01
                                                  .copyWith(
                                                      color: AppStyle.white
                                                          .withOpacity(0.6)),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    ...rental.apparelEquipmentsRentalProduct
                                        .productOptions
                                        .getOrCrash()
                                        .map((option) {
                                      final optionDescription =
                                          option.title.getOrCrash();
                                      final optionItemsDescription = option
                                          .optionItems
                                          .getOrCrash()
                                          .map((item) =>
                                              "${item.title.getOrCrash()}(${priceText(item.price)})")
                                          .join(",");

                                      return RichText(
                                        text: TextSpan(
                                          style: AppTextStyle.body01.copyWith(
                                              color: AppStyle.white
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.bold),
                                          text: optionDescription,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  " / $optionItemsDescription",
                                              style: AppTextStyle.body01
                                                  .copyWith(
                                                      color: AppStyle.white
                                                          .withOpacity(0.6)),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                    ...rental.accessoryEquipmentsRentalProduct
                                        .productOptions
                                        .getOrCrash()
                                        .map((option) {
                                      final optionDescription =
                                          option.title.getOrCrash();
                                      final optionItemsDescription = option
                                          .optionItems
                                          .getOrCrash()
                                          .map((item) =>
                                              "${item.title.getOrCrash()}(${priceText(item.price)})")
                                          .join(",");

                                      return RichText(
                                        text: TextSpan(
                                          style: AppTextStyle.body01.copyWith(
                                              color: AppStyle.white
                                                  .withOpacity(0.6),
                                              fontWeight: FontWeight.bold),
                                          text: optionDescription,
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  " / $optionItemsDescription",
                                              style: AppTextStyle.body01
                                                  .copyWith(
                                                      color: AppStyle.white
                                                          .withOpacity(0.6)),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  // Expanded(
                                  //   child: Column(
                                  //     crossAxisAlignment:
                                  //         CrossAxisAlignment.start,
                                  //     children: [
                                  //       Text(
                                  //         "강습권",
                                  //         style:
                                  //             AppTextStyle.heading03.copyWith(
                                  //           color: AppStyle.white,
                                  //         ),
                                  //       ),
                                  //       const SizedBox(
                                  //         height: 8,
                                  //       ),
                                  //       CommonDetector(
                                  //         onTap: () {
                                  //           showToast(context, "개발중이에요. 곧 만나요!");
                                  //         },
                                  //         child: DottedBorder(
                                  //           borderType: BorderType.RRect,
                                  //           color: AppStyle.accentOrange,
                                  //           radius: const Radius.circular(8),
                                  //           dashPattern: const [8],
                                  //           padding: const EdgeInsets.all(6),
                                  //           child: SizedBox(
                                  //             height: 56,
                                  //             child: Center(
                                  //               child: Text(
                                  //                 "강습권 추가",
                                  //                 style: AppTextStyle.heading03
                                  //                     .copyWith(
                                  //                   color: AppStyle.white,
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const SizedBox(
                                  //   width: 20,
                                  // ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "리프트권",
                                          style:
                                              AppTextStyle.heading03.copyWith(
                                            color: AppStyle.white,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        CommonDetector(
                                          onTap: () {
                                            SelectTicketPage
                                                .pushSelectTicketPage(
                                                    context, rental,
                                                    onResult: (value) {
                                              List<DateTimeTickets>?
                                                  dateTimeTickets = value
                                                      as List<DateTimeTickets>?;
                                              if (dateTimeTickets != null) {
                                                context.read<CartBloc>().add(CartEvent
                                                    .setDateTimeTickets(
                                                        rental: rental,
                                                        dateTimeTickets:
                                                            dateTimeTickets));
                                              }
                                            });
                                          },
                                          child: DottedBorder(
                                            borderType: BorderType.RRect,
                                            color: rental.dateTimeTickets?.isNotEmpty == true ? AppStyle.accentColor : AppStyle.accentOrange,
                                            strokeWidth: rental.dateTimeTickets?.isNotEmpty == true ? 2 : 1,
                                            radius: const Radius.circular(8),
                                            dashPattern: rental.dateTimeTickets?.isNotEmpty == true ? [1] : [8],
                                            padding: const EdgeInsets.all(6),
                                            child: SizedBox(
                                              height: 56,
                                              child: Center(
                                                child: Text(
                                                  rental.dateTimeTickets?.isNotEmpty == true ? "리프트권 선택 완료" : "리프트권 구매",
                                                  style: AppTextStyle.heading03
                                                      .copyWith(
                                                    color: rental.dateTimeTickets?.isNotEmpty == true ? AppStyle.accentColor : AppStyle.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 24,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            : Padding(
                padding: const EdgeInsets.only(
                  left: 64,
                  right: 64,
                  bottom: 88,
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "이번 여정을 함께할",
                        style: AppTextStyle.heading03.copyWith(
                          color: AppStyle.white,
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      CommonButton(
                        onTap: () {
                          CreateRentalPage.pushCreateRentalPage(context, null,
                              onResult: (value) {
                            Rental? newRental = value as Rental?;
                            if (newRental != null) {
                              context
                                  .read<CartBloc>()
                                  .add(CartEvent.addRental(rental: newRental));
                            }
                          });
                        },
                        text: "렌탈 상품 추가하기😄",
                        textColor: AppStyle.black,
                        buttonColor: AppStyle.accentColor,
                        //TODO : 태블릿과 모바일 구분해야함
                        maxWidth: MediaQuery.sizeOf(context).width,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        "장비, 의류, 악세서리를 추가해보세요.",
                        style: AppTextStyle.body03.copyWith(
                          color: AppStyle.white.withOpacity(0.8),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      },
    );
  }
}
