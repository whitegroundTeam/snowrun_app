import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/core/select_button/select_button_bloc.dart';
import 'package:doortoout/injection.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';

class CommonButton extends StatefulWidget {
  final SelectButtonBloc? selectButtonBloc;
  final Color? buttonColor;
  final Color? inActiveButtonColor;
  final Color? textColor;
  final Color? inActiveTextColor;
  final Color? iconColor;
  final String? iconPath;
  final String? text;
  final String? description;
  final Function? onTap;
  final String? iconHeroTag;
  final bool? isPrimary;
  final double? borderRadius;
  final double? borderWidth;
  final Color? borderColor;
  final Color? inActiveBorderColor;
  final bool? isActive;
  final double? height;
  final double? maxWidth;
  final double? buttonVerticalPadding;
  final int? animationDelay;

  const CommonButton({super.key,
    this.selectButtonBloc,
    this.buttonColor = AppStyle.secondaryBackground,
    this.inActiveButtonColor = AppStyle.secondaryBackground,
    this.textColor = AppStyle.white,
    this.inActiveTextColor = AppStyle.white,
    this.iconColor,
    this.iconPath,
    this.iconHeroTag,
    this.text,
    this.description,
    this.isPrimary,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.inActiveBorderColor,
    this.isActive,
    this.height,
    this.maxWidth,
    this.buttonVerticalPadding,
    this.animationDelay,
    this.onTap});

  @override
  State createState() => CommonButtonState();
}

class CommonButtonState extends State<CommonButton> {
  late SelectButtonBloc selectedButtonBloc;

  @override
  void initState() {
    super.initState();
    final initSelectButtonBloc = widget.selectButtonBloc;
    if (initSelectButtonBloc != null) {
      selectedButtonBloc = initSelectButtonBloc;
      widget.selectButtonBloc
          ?.add(SelectButtonEvent.setActive(isActive: widget.isActive ?? true));
    } else {
      selectedButtonBloc = getIt<SelectButtonBloc>();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SelectButtonBloc, SelectButtonState>(
      bloc: selectedButtonBloc,
      listener: (context, state) {},
      builder: (context, state) {
        final isActive = state.isActive;
        return CommonDetector(
          delay: widget.animationDelay,
          onTap: () {
            widget.onTap?.call();
          },
          child: Container(
            constraints: BoxConstraints(
              maxWidth: widget.maxWidth ?? MediaQuery
                  .of(context)
                  .size
                  .width,
            ),
            decoration: widget.isPrimary == true
                ? BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppStyle.accentColor, AppStyle.accentGreen],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius:
              BorderRadius.circular(widget.borderRadius ?? 12.0),
              boxShadow: [
                BoxShadow(
                  color: AppStyle.black.withOpacity(0.2),
                  blurRadius: 15,
                  offset: const Offset(0, 7),
                ),
              ],
            )
                : BoxDecoration(
              color: isActive
                  ? (widget.buttonColor ?? AppStyle.secondaryBackground)
                  : widget.inActiveButtonColor,
              borderRadius:
              BorderRadius.circular(widget.borderRadius ?? 12.0),
              border: Border.all(
                color: widget.borderColor ?? AppStyle.transparent,
                width: widget.borderWidth ?? 1,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (widget.iconPath?.isNotEmpty == true) ...{
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 12,
                    ),
                    child: widget.iconHeroTag?.isNotEmpty == true
                        ? Hero(
                      tag: widget.iconHeroTag ?? "",
                      child: Image.asset(
                        widget.iconPath ?? "",
                        width: 24,
                        height: 24,
                        color: widget.iconColor,
                      ),
                    )
                        : Image.asset(
                      widget.iconPath ?? "",
                      width: 24,
                      height: 24,
                      color: widget.iconColor,
                    ),
                  ),
                },
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: widget.buttonVerticalPadding ?? 12,
                      ),
                      child: Column(
                        children: [
                          Text(
                            widget.text ?? "",
                            style: AppTextStyle.body02.copyWith(
                              color: isActive
                                  ? widget.textColor
                                  : widget.inActiveTextColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Visibility(
                            visible: widget.description?.isNotEmpty == true,
                            child: Text(
                              widget.description ?? "",
                              style: AppTextStyle.body04.copyWith(
                                color: isActive
                                    ? widget.textColor
                                    : widget.inActiveTextColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                if (widget.iconPath?.isNotEmpty == true) ...{
                  const SizedBox(
                    width: 24,
                  ),
                }
              ],
            ),
          ),
        );
      },
    );
  }
}