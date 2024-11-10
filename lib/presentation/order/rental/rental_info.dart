import 'dart:async';

import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/rental/actor/rental_actor_bloc.dart';
import 'package:doortoout/application/rental_shop/rental_shop_bloc.dart';
import 'package:doortoout/domain/body_spec/model/age.dart';
import 'package:doortoout/domain/user/model/gender.dart';
import 'package:doortoout/presentation/body_spec/body_spec_bottom_sheet.dart';
import 'package:doortoout/presentation/body_spec/body_spec_converter.dart';
import 'package:doortoout/presentation/core/common_buttons/button_info.dart';
import 'package:doortoout/presentation/core/common_buttons/common_buttons.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_dialog.dart';
import 'package:doortoout/presentation/core/common_info_button.dart';
import 'package:doortoout/presentation/core/common_tag.dart';
import 'package:doortoout/presentation/core/common_title.dart';
import 'package:doortoout/presentation/core/constants.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/utils/text_utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RentalInfo extends StatefulWidget {
  const RentalInfo({super.key});

  @override
  State createState() => RentalInfoState();
}

class RentalInfoState extends State<RentalInfo> {
  bool isExpandedRentalInfo = true;
  bool isCompleted = false;

  List<Gender> genders = [
    Gender.male,
    Gender.female,
  ];

  List<Age> ages = [
    Age.adult,
    Age.child,
  ];

  @override
  Widget build(BuildContext context) {
    final RentalActorBloc rentalActorBloc = context.read<RentalActorBloc>();

    return BlocConsumer<RentalActorBloc, RentalActorState>(
      bloc: rentalActorBloc
        ..add(const RentalActorEvent.setAge(age: Age.adult))
        ..add(const RentalActorEvent.setGender(gender: Gender.male)),
      listener: (context, state) {
        if(state.isValidAge && state.isValidGender && state.isValidBodySpec) {
          if(!isCompleted && isExpandedRentalInfo) {
            isCompleted = true;
            setState(() {
              isExpandedRentalInfo = false;
            });
          }
        }
      },
      builder: (context, state) {
        final rental = state.rental;
        final height =
            '${rental.bodySpec?.height?.range?.start.getOrCrash().toStringAsFixed(rental.bodySpec?.height?.range?.decimalPlaces.getOrCrash() ?? 0)} ~ ${rental.bodySpec?.height?.range?.end.getOrCrash().toStringAsFixed(rental.bodySpec?.height?.range?.decimalPlaces.getOrCrash() ?? 0)} ${"${Constants.heightUnitPrefix}${capitalizeFirstLetter(rental.bodySpec?.height?.unit.name ?? '')}".tr()}';
        final weight =
            '${rental.bodySpec?.weight?.range?.start.getOrCrash().toStringAsFixed(rental.bodySpec?.weight?.range?.decimalPlaces.getOrCrash() ?? 0)} ~ ${rental.bodySpec?.weight?.range?.end.getOrCrash().toStringAsFixed(rental.bodySpec?.weight?.range?.decimalPlaces.getOrCrash() ?? 0)} ${"${Constants.weightUnitPrefix}${capitalizeFirstLetter(rental.bodySpec?.weight?.unit.name ?? '')}".tr()}';
        final footSpec =
            "${rental.bodySpec?.footSize?.value?.value.getOrCrash().toStringAsFixed(rental.bodySpec?.footSize?.value?.decimalPlaces.getOrCrash() ?? 0)} ${"${Constants.footSizeUnitPrefix}${capitalizeFirstLetter(rental.bodySpec?.footSize?.unit.name ?? '')}".tr()}";

        final age = rental.age;
        String ageText = "";
        if (age != null) {
          ageText =
              "${Constants.agePrefix}${capitalizeFirstLetter(age.name)}".tr();
        }

        final gender = rental.gender;
        String genderText = "";
        if (gender != null) {
          genderText =
              "${Constants.genderPrefix}${capitalizeFirstLetter(gender.name)}"
                  .tr();
        }

        final isValid =
            state.isValidAge && state.isValidGender && state.isValidBodySpec;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: AppStyle.white.withOpacity(0.05),
              thickness: 2,
            ),
            CommonDetector(
              onTap: () {
                setState(() {
                  isExpandedRentalInfo = !isExpandedRentalInfo;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 6,
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
                        color: isValid
                            ? AppStyle.accentGreen
                            : AppStyle.inactiveBackground,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      '장비 선택을 위한 정보',
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
                        isExpandedRentalInfo
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
              visible: isValid,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 32,
                ),
                child: Text(
                  isValid
                      ? '$ageText / $genderText / $height / $weight / $footSpec'
                      : '',
                  style: AppTextStyle.body04.copyWith(
                    color: AppStyle.white.withOpacity(
                      0.6,
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isExpandedRentalInfo,
              child: Column(
                children: [
                  const CommonTitle(
                    title: "연령대",
                    isRequired: false,
                    horizontalPadding: 8,
                    verticalPadding: 8,
                  ),
                  CommonButtons(
                    buttons: ages
                        .map((e) => ButtonInfo(
                            title:
                                "${Constants.agePrefix}${capitalizeFirstLetter(e.name)}"
                                    .tr()))
                        .toList(),
                    onClick: (index) async {
                      bool isValid = await _checkAgeChange() ?? true;

                      if (isValid) {
                        rentalActorBloc
                            .add(RentalActorEvent.setAge(age: ages[index]));
                      }
                      return isValid;
                    },
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CommonTitle(
                    title: "성별",
                    isRequired: false,
                    horizontalPadding: 8,
                    verticalPadding: 8,
                  ),
                  CommonButtons(
                    buttons: genders
                        .map((e) => ButtonInfo(
                            title:
                                "${Constants.genderPrefix}${capitalizeFirstLetter(e.name)}"
                                    .tr()))
                        .toList(),
                    onClick: (index) async {
                      bool isValid = await _checkGenderChange() ?? true;

                      if (isValid) {
                        rentalActorBloc.add(
                            RentalActorEvent.setGender(gender: genders[index]));
                      }
                      return isValid;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Visibility(
                    visible: rental.bodySpec == null,
                    child: Column(
                      children: [
                        const CommonTitle(
                          title: "신체 정보",
                          isRequired: false,
                          horizontalPadding: 8,
                          verticalPadding: 8,
                        ),
                        CommonInfoButton(
                          title: '신체 정보 입력하기',
                          description: "부상 방지를 위해 최대한 정확하게 넣어주세요!",
                          onClick: () {
                            _showBodySpecBottomSheet(BodySpecType.height);
                          },
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: rental.bodySpec != null,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          '신체 정보',
                          style: AppTextStyle.heading02,
                        ),
                        const CommonTitle(
                          title: "키",
                          isRequired: false,
                          horizontalPadding: 8,
                          verticalPadding: 8,
                        ),
                        CommonInfoButton(
                          iconPath: 'assets/webp/man.webp',
                          title: height,
                          description:
                              convertHeightToString(rental.bodySpec?.height),
                          onClick: () {
                            _showBodySpecBottomSheet(BodySpecType.height);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CommonTitle(
                          title: "체중",
                          isRequired: false,
                          horizontalPadding: 8,
                          verticalPadding: 8,
                        ),
                        CommonInfoButton(
                          iconPath: 'assets/webp/scale.webp',
                          title: weight,
                          description:
                              convertWeightToString(rental.bodySpec?.weight),
                          onClick: () {
                            _showBodySpecBottomSheet(BodySpecType.weight);
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const CommonTitle(
                          title: "발 사이즈",
                          isRequired: false,
                          horizontalPadding: 8,
                          verticalPadding: 8,
                        ),
                        CommonInfoButton(
                          iconPath: 'assets/webp/shoe.webp',
                          title: footSpec,
                          description: convertFootSizeToString(
                              rental.bodySpec?.footSize,
                              context
                                  .read<RentalShopBloc>()
                                  .state
                                  .rentalShop
                                  .supplyBodySpec
                                  .supplyFootSize
                                  .getFootSizeUnits(
                                      rental.age?.isChild ?? false,
                                      rental.gender?.isMale ?? false)),
                          tags: rental.bodySpec?.footSize?.footShapes
                              .getOrCrash()
                              .map((e) =>
                                  "${Constants.footSizeShapePrefix}${capitalizeFirstLetter(e.name)}"
                                      .tr())
                              .toList(),
                          tagTextColor: AppStyle.white,
                          onClick: () {
                            _showBodySpecBottomSheet(BodySpecType.footSize);
                          },
                        ),
                      ],
                    ),
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

  _showBodySpecBottomSheet(BodySpecType bodySpecType) {
    final rentalActorBloc = context.read<RentalActorBloc>();
    showBodySpecBottomSheet(
      context,
      isChild: rentalActorBloc.state.rental.age?.isChild,
      isMale: rentalActorBloc.state.rental.gender?.isMale,
      bodySpecType: bodySpecType,
      bodySpec: rentalActorBloc.state.rental.bodySpec,
      onCompleted: (bodySpec) {
        rentalActorBloc.add(RentalActorEvent.setBodySpec(bodySpec: bodySpec));
      },
    );
  }

  /// 성별, 어린이 여부에 따라 bodySpec의 단위가 달라짐
  /// 성인이면 성별 변경 시 무조건 bodySpec 초기화 dialog 보여주기
  /// 어린이면 성별 변경 시 bodySpec 초기화 dialog 보여주지 않음
  Future<bool?> _checkGenderChange() async {
    if (context.read<RentalActorBloc>().state.rental.age?.isChild == false) {
      return _checkAndResetBodySpec();
    } else {
      return true;
    }
  }

  Future<bool?> _checkAgeChange() async {
    return _checkAndResetBodySpec();
  }

  Future<bool?> _checkAndResetBodySpec() async {
    if (context.read<RentalActorBloc>().state.rental.bodySpec == null) {
      return true;
    } else {
      Completer<bool> completer = Completer<bool>();
      await showCommonDialog(context,
          buttonText: "네",
          title: "신체 정보가 초기화 됩니다",
          description: "장비 선택을 위한 정보를 변경하면 신체 정보를 다시 입력해주셔야해요😄",
          negativeButtonText: "아니요", onPressedButton: () async {
        context
            .read<RentalActorBloc>()
            .add(const RentalActorEvent.setBodySpec(bodySpec: null));
        context.pop();
        completer.complete(true);
      }, onPressedNegativeButton: () {
        context.pop();
        completer.complete(false);
      });

      return completer.future;
    }
  }
}
