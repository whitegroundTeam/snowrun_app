import 'package:country_code_picker/country_code_picker.dart';
import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/rental/actor/rental_actor_bloc.dart';
import 'package:snowrun_app/application/rental_shop/rental_shop_bloc.dart';
import 'package:snowrun_app/domain/contact/model/contact.dart';
import 'package:snowrun_app/domain/contact/model/contact_method.dart';
import 'package:snowrun_app/domain/rental/model/rental.dart';
import 'package:snowrun_app/presentation/core/bullet_text.dart';
import 'package:snowrun_app/presentation/core/common_buttons/button_info.dart';
import 'package:snowrun_app/presentation/core/common_buttons/common_buttons.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';
import 'package:snowrun_app/presentation/core/common_title.dart';
import 'package:snowrun_app/presentation/core/constants.dart';
import 'package:snowrun_app/presentation/core/textfield/app_text_field_style.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:snowrun_app/utils/price_util.dart';
import 'package:snowrun_app/utils/text_utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RentalContact extends StatefulWidget {
  final String? representativePhoneNumber;
  final String? representativeEmail;

  const RentalContact(
      {super.key, this.representativePhoneNumber, this.representativeEmail});

  @override
  State createState() => RentalContactState();
}

class RentalContactState extends State<RentalContact> {
  ContactMethod currentContactMethod = ContactMethod.phone;
  bool isExpandedContact = true;

  final TextEditingController _nameController = TextEditingController();
  final FocusNode _nameFocusNode = FocusNode();
  bool isFocusedname = false;

  final TextEditingController _phoneController = TextEditingController();
  final FocusNode _phoneFocusNode = FocusNode();
  bool isFocusedPhoneNumber = false;

  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailFocusNode = FocusNode();
  bool isFocusedEmail = false;

  bool isSetPrevPhoneNumber = false;
  bool isSetPrevEmail = false;

  @override
  void initState() {
    super.initState();

    _nameController.text = context.read<RentalActorBloc>().state.rental.name.getOrCrash() ?? "";
    _nameController.addListener(() {
      context
          .read<RentalActorBloc>()
          .add(RentalActorEvent.setName(name: _nameController.text));
    });
    _nameFocusNode.addListener(() {
      setState(() {
        isFocusedname = _nameFocusNode.hasFocus;
      });
    });

    _phoneController.text = context.read<RentalActorBloc>().state.rental.contact?.phoneNumber.getOrCrash() ?? "";
    _phoneController.addListener(() {
      context.read<RentalActorBloc>().add(
          RentalActorEvent.setPhoneNumber(phoneNumber: _phoneController.text));

      if (_phoneController.text.isNotEmpty == true) {
        setState(() {
          isSetPrevPhoneNumber = true;
        });
      }
    });
    _phoneFocusNode.addListener(() {
      setState(() {
        isFocusedPhoneNumber = _phoneFocusNode.hasFocus;
      });
    });

    _emailController.text = context.read<RentalActorBloc>().state.rental.contact?.email.getOrCrash() ?? "";
    _emailController.addListener(() {
      context
          .read<RentalActorBloc>()
          .add(RentalActorEvent.setEmail(email: _emailController.text));
      if (_emailController.text.isNotEmpty == true) {
        setState(() {
          isSetPrevEmail = true;
        });
      }
    });
    _emailFocusNode.addListener(() {
      setState(() {
        isFocusedEmail = _phoneFocusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final rentalShop = context.read<RentalShopBloc>().state.rentalShop;
    final isPhone = currentContactMethod == ContactMethod.phone;

    return BlocConsumer<RentalActorBloc, RentalActorState>(
      bloc: context.read<RentalActorBloc>(),
      listener: (context, state) {
        if(state.status == RentalActorStatus.edit) {
          Rental? rental = context.read<RentalActorBloc>().state.rental;
          Contact? contact = rental.contact;

          if (rental.name.getOrCrash().isNotEmpty) {
            _nameController.text = rental.name.getOrCrash() ?? '';
          }
          if (contact?.phoneNumber.getOrCrash().isNotEmpty == true) {
            _phoneController.text = contact?.phoneNumber.getOrCrash() ?? '';
          }
          if (contact?.email.getOrCrash().isNotEmpty == true) {
            _emailController.text = contact?.email.getOrCrash() ?? '';
          }
        }
      },
      builder: (context, state) {
        final rental = state.rental;
        final isValid = state.isValidName && state.isValidContact;

        return Column(
          children: [
            Divider(
              color: AppStyle.white.withOpacity(0.05),
              thickness: 2,
            ),
            CommonDetector(
              onTap: () {
                setState(() {
                  isExpandedContact = !isExpandedContact;
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
                      '반납 정보',
                      style: AppTextStyle.heading01,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    // const CommonTag(tagName: "필수"),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                      ),
                      child: Image.asset(
                        isExpandedContact
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
              visible: isExpandedContact,
              child: Column(
                children: [
                  const CommonTitle(
                    title: "이름",
                    isRequired: false,
                    horizontalPadding: 8,
                    verticalPadding: 8,
                  ),
                  TextFormField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    cursorColor: AppStyle.white,
                    focusNode: _nameFocusNode,
                    decoration: AppTextFieldStyle.inputfield.copyWith(
                      hintText: '이름을 입력해주세요',
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
                    height: 16,
                  ),
                  CommonTitle(
                    title: isPhone ? "전화번호" : "이메일",
                    isRequired: false,
                    horizontalPadding: 8,
                    actionButtonName: isPhone ? "이메일로 변경" : "전화번호로 변경",
                    onClickActionButton: () {
                      setState(() {
                        if (isPhone) {
                          currentContactMethod = ContactMethod.email;
                        } else {
                          currentContactMethod = ContactMethod.phone;
                        }
                      });
                    },
                  ),
                  Visibility(
                    visible: isPhone,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppStyle.inputFieldBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: isFocusedPhoneNumber
                                  ? AppStyle.accentColor
                                  : AppStyle.inputFieldInactiveBorder,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  CountryCodePicker(
                                    onChanged: (countryCode) {
                                      setState(() {
                                        isFocusedPhoneNumber = true;
                                      });
                                      context.read<RentalActorBloc>().add(
                                          RentalActorEvent.setCountryCode(
                                              countryCode: countryCode));
                                      _phoneFocusNode.requestFocus();
                                    },
                                    initialSelection:
                                        context.locale.countryCode,
                                    padding: const EdgeInsets.only(
                                      left: 4,
                                      right: 8,
                                    ),
                                    dialogBackgroundColor: AppStyle.white,
                                    textStyle: AppTextStyle.body01.copyWith(
                                      color: AppStyle.white,
                                    ),
                                    backgroundColor: AppStyle.backgroundBlack,
                                    barrierColor: AppStyle.backgroundBlack
                                        .withOpacity(0.7),
                                    favorite: Constants.supportLocales
                                        .map((e) => e.countryCode ?? "")
                                        .toList(),
                                    showCountryOnly: false,
                                    showOnlyCountryWhenClosed: false,
                                    alignLeft: false,
                                    // searchDecoration: InputDecorator(decoration: ,),
                                  ),
                                  Expanded(
                                    child: TextField(
                                      keyboardType: TextInputType.phone,
                                      controller: _phoneController,
                                      focusNode: _phoneFocusNode,
                                      decoration: InputDecoration(
                                        hintText: "전화번호를 입력해주세요",
                                        hintStyle: TextStyle(
                                            color: AppStyle.white
                                                .withOpacity(0.6)),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                        border: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.transparent),
                                        ),
                                      ),
                                      style: AppTextStyle.body01.copyWith(
                                        color: AppStyle.white,
                                      ),
                                      // onChanged: (value) {
                                      //   context.read<RentalActorBloc>().add(
                                      //       RentalActorEvent.setPhoneNumber(
                                      //           phoneNumber: value));
                                      //
                                      //   if (value.isNotEmpty == true) {
                                      //     setState(() {
                                      //       isSetPrevPhoneNumber = true;
                                      //     });
                                      //   }
                                      // },
                                      // validator: (_) {
                                      //   return context
                                      //       .read<SignInFormBloc>()
                                      //       .state
                                      //       .emailAddress
                                      //       .value
                                      //       .fold(
                                      //         (f) => f.maybeMap(
                                      //           invalidEmail: (_) {
                                      //             // _hideLoading();
                                      //             return '유효한 이메일 주소가 아닙니다.';
                                      //           },
                                      //           orElse: () => null,
                                      //         ),
                                      //         (r) => null,
                                      //       );
                                      // },
                                    ),
                                  ),
                                ],
                              ),
                              Visibility(
                                visible: widget.representativePhoneNumber
                                            ?.isNotEmpty ==
                                        true &&
                                    !isSetPrevPhoneNumber,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: AppStyle.accentOrange,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  child: CommonDetector(
                                    onTap: () {
                                      setState(() {
                                        _phoneController.text =
                                            widget.representativePhoneNumber ??
                                                "";
                                        isSetPrevPhoneNumber =
                                            !isSetPrevPhoneNumber;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                          "이 번호 사용하기(${widget.representativePhoneNumber})",
                                          style:
                                              AppTextStyle.caption01.copyWith(
                                            color: AppStyle.black,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            children: [
                              BulletText(
                                title: "최대한 많은 연락처를 공유해주세요",
                                description: " 배터리 방전, 통화 불가능 등의 상황을 대비해요!",
                                bulletSize: 3,
                                bulletColor: AppStyle.accentOrange,
                                titleStyle: AppTextStyle.caption01
                                    .copyWith(color: AppStyle.accentOrange),
                                descriptionStyle: AppTextStyle.caption00
                                    .copyWith(
                                        color: AppStyle.white.withOpacity(0.6)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              BulletText(
                                description: "반납 정보 등 유의사항을 알려드려요.",
                                bulletSize: 3,
                                bulletColor: AppStyle.white.withOpacity(0.6),
                                descriptionStyle: AppTextStyle.caption00
                                    .copyWith(
                                        color: AppStyle.white.withOpacity(0.6)),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              BulletText(
                                description: "재방문 시 이 연락처로 최대한 빠르게 주문을 도와드려요.",
                                bulletSize: 3,
                                bulletColor: AppStyle.white.withOpacity(0.6),
                                descriptionStyle: AppTextStyle.caption00
                                    .copyWith(
                                        color: AppStyle.white.withOpacity(0.6)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: !isPhone,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppStyle.inputFieldBackground,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: AppStyle.inputFieldInactiveBorder,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailController,
                                focusNode: _emailFocusNode,
                                keyboardType: TextInputType.emailAddress,
                                cursorColor: AppStyle.white,
                                style: AppTextStyle.body01.copyWith(
                                  color: AppStyle.white,
                                ),
                                decoration: widget.representativeEmail
                                                ?.isNotEmpty ==
                                            true &&
                                        !isSetPrevEmail
                                    ? AppTextFieldStyle.transparent.copyWith(
                                        hintText: '이메일을 입력해주세요',
                                      )
                                    : AppTextFieldStyle.inputfield.copyWith(
                                        hintText: '이메일을 입력해주세요',
                                      ),
                                // onChanged: (value) {
                                //   context.read<RentalActorBloc>().add(
                                //       RentalActorEvent.setEmail(email: value));
                                //   if (value.isNotEmpty == true) {
                                //     setState(() {
                                //       isSetPrevEmail = true;
                                //     });
                                //   }
                                // },
                                // validator: (_) {
                                //   return context
                                //       .read<SignInFormBloc>()
                                //       .state
                                //       .emailAddress
                                //       .value
                                //       .fold(
                                //         (f) => f.maybeMap(
                                //           invalidEmail: (_) {
                                //             _hideLoading();
                                //             return '유효한 이메일 주소가 아닙니다.';
                                //           },
                                //           orElse: () => null,
                                //         ),
                                //         (r) => null,
                                //       );
                                // },
                              ),
                              Visibility(
                                visible:
                                    widget.representativeEmail?.isNotEmpty ==
                                            true &&
                                        !isSetPrevEmail,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                    horizontal: 12,
                                  ),
                                  decoration: const BoxDecoration(
                                    color: AppStyle.accentOrange,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12.0),
                                      bottomRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  child: CommonDetector(
                                    onTap: () {
                                      setState(() {
                                        _emailController.text =
                                            widget.representativeEmail ?? "";
                                        isSetPrevEmail = !isSetPrevEmail;
                                      });
                                    },
                                    child: Center(
                                      child: Text(
                                          "이 메일 사용하기(${widget.representativeEmail})",
                                          style:
                                              AppTextStyle.caption01.copyWith(
                                            color: AppStyle.black,
                                          )),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(
                            top: 8,
                            bottom: 8,
                            left: 12,
                            right: 12,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 2,
                              ),
                              BulletText(
                                description: "반납 정보 등 유의사항을 알려드려요😄",
                                bulletSize: 3,
                                bulletColor: AppStyle.white.withOpacity(0.6),
                                descriptionStyle: AppTextStyle.caption00
                                    .copyWith(
                                        color: AppStyle.white.withOpacity(0.6)),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              BulletText(
                                description: "재방문 시 이 연락처로 최대한 빠르게 주문을 도와드려요.",
                                bulletSize: 3,
                                bulletColor: AppStyle.white.withOpacity(0.6),
                                descriptionStyle: AppTextStyle.caption00
                                    .copyWith(
                                        color: AppStyle.white.withOpacity(0.6)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const CommonTitle(
                    title: "반납 방법",
                    isRequired: false,
                    horizontalPadding: 8,
                    verticalPadding: 8,
                  ),
                  CommonButtons(
                    buttons: rentalShop.operationInfo.rentalReturnMethods
                        .getOrCrash()
                        .map((e) => ButtonInfo(
                        title:
                        "${Constants.returnMethodPrefix}${capitalizeFirstLetter(e.rentalReturnType.name)}"
                            .tr(),
                        description: "+${priceText(e.price)}"))
                        .toList(),
                    onClick: (index) async {
                      context.read<RentalActorBloc>().add(
                          RentalActorEvent.setReturnType(
                              rentalReturnType: rentalShop
                                  .operationInfo.rentalReturnMethods
                                  .getOrCrash()[index]
                                  .rentalReturnType));
                      return true;
                    },
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 96,
            ),
          ],
        );
      },
    );
  }
}
