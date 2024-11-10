import 'package:doortoout/app_style.dart';
import 'package:doortoout/application/body_spec/body_spec_bloc.dart';
import 'package:doortoout/domain/body_spec/model/foot_size.dart';
import 'package:doortoout/presentation/core/common_title.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/constants.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:doortoout/utils/text_utils.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class BodySpecFootSizeTab extends StatefulWidget {
  const BodySpecFootSizeTab({super.key});

  @override
  State createState() => BodySpecFootSizeTabState();
}

class BodySpecFootSizeTabState extends State<BodySpecFootSizeTab>
    with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final bodySpecBloc = context.read<BodySpecBloc>();
    return BlocBuilder<BodySpecBloc, BodySpecState>(
      builder: (context, state) {
        final selectedFootSize = state.bodySpec.footSize;
        final footSizeUnits = state.footSizeUnits;
        final footShapes = state.footShapes;
        final footSizes = state.footSizes;
        final footSizeValues = footSizes
            .map((e) => e.value
                .getOrCrash()
                .toStringAsFixed(e.decimalPlaces.getOrCrash()))
            .toList();

        final selectedFootSizeValue =
            selectedFootSize?.value;
        if (selectedFootSizeValue == null) {
          context.read<BodySpecBloc>().add(
            BodySpecEvent.setFootSize(
              value: footSizes[footSizes.length ~/ 2],
            ),
          );
        }

        final selectedShapes =
            state.bodySpec.footSize?.footShapes.getOrCrash() ??
                [FootShape.normal];
        if(selectedShapes.isEmpty == true) {
          selectedShapes.add(FootShape.normal);
        }

        int initPosition = selectedFootSizeValue != null
            ? footSizes.indexOf(selectedFootSizeValue)
            : (footSizes.length / 2).round();

        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const CommonTitle(
                title: "발 단위",
                horizontalPadding: 8,
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    alignment: WrapAlignment.start,
                    children: footSizeUnits
                        .map(
                          (e) => CommonDetector(
                            onTap: () {
                              bodySpecBloc.add(
                                BodySpecEvent.setFootSizeUnit(
                                  selectedUnit: e,
                                ),
                              );
                            },
                            child: Chip(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 12,
                              ),
                              label: Text(
                                "${Constants.footSizeUnitPrefix}${capitalizeFirstLetter(e.name)}"
                                    .tr(),
                                style: AppTextStyle.caption01.copyWith(
                                    color: state.bodySpec.footSize?.unit == e
                                        ? AppStyle.white
                                        : AppStyle.white),
                              ),
                              backgroundColor: state.bodySpec.footSize?.unit == e
                                  ? AppStyle.black
                                  : AppStyle.inputFieldBackground,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.0),
                                side: BorderSide(
                                  color: state.bodySpec.footSize?.unit == e
                                      ? AppStyle.accentColor
                                      : AppStyle.white.withOpacity(0.1),
                                  width: 1,
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // const CommonTip(
              //   tipTitle: "26~30(kg)",
              // ),

              const CommonTitle(
                title: "발 특징 (복수 선택 가능)",
                horizontalPadding: 8,
                verticalPadding: 0,
              ),
              const SizedBox(
                height: 4,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    spacing: 8,
                    alignment: WrapAlignment.start,
                    children: footShapes
                        .map(
                          (e) => CommonDetector(
                        delay: 0,
                        onTap: () {
                          context.read<BodySpecBloc>().add(
                            BodySpecEvent.selectFootShape(
                                selectedFootShape: e),
                          );
                        },
                        child: Chip(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 12,
                          ),
                          label: Text(
                            "${Constants.footSizeShapePrefix}${capitalizeFirstLetter(e.name)}"
                                .tr(),
                            style: AppTextStyle.caption01.copyWith(
                                color: selectedShapes.contains(e)
                                    ? AppStyle.white
                                    : AppStyle.white),
                          ),
                          backgroundColor: selectedShapes.contains(e)
                              ? AppStyle.black
                              : AppStyle.inputFieldBackground,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(
                              color: selectedShapes.contains(e)
                                  ? AppStyle.accentColor
                                  : AppStyle.white.withOpacity(0.1),
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                        .toList(),
                  ),
                ),
              ),

              Expanded(
                child: WheelChooser(
                  onValueChanged: (s) {
                    int selectedIndex = footSizeValues.indexOf(s);
                    context.read<BodySpecBloc>().add(
                          BodySpecEvent.setFootSize(
                            value: footSizes[selectedIndex],
                          ),
                        );
                  },
                  datas: footSizeValues,
                  startPosition: initPosition,
                  magnification: 1.5,
                  perspective: 0.005,
                  unSelectTextStyle: AppTextStyle.body04.copyWith(
                    color: AppStyle.white.withOpacity(0.6),
                  ),
                  selectTextStyle: AppTextStyle.body00,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
