import 'package:snowrun_app/app_style.dart';
import 'package:snowrun_app/application/body_spec/body_spec_bloc.dart';
import 'package:snowrun_app/presentation/core/common_buttons/button_info.dart';
import 'package:snowrun_app/presentation/core/common_buttons/common_buttons.dart';
import 'package:snowrun_app/presentation/core/common_tip.dart';
import 'package:snowrun_app/presentation/core/typography/app_text_style.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wheel_chooser/wheel_chooser.dart';

class BodySpecWeightTab extends StatefulWidget {
  const BodySpecWeightTab({super.key});

  @override
  State createState() => BodySpecWeightTabState();
}

class BodySpecWeightTabState extends State<BodySpecWeightTab>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final bodySpecBloc = context.read<BodySpecBloc>();
    return BlocBuilder<BodySpecBloc, BodySpecState>(
      builder: (context, state) {
        final selectedWeight = state.bodySpec.weight;
        final weightUnits = state.weightUnits;
        final weights = state.weights;
        final weightValues = weights
            .map((e) =>
                "${e.start.getOrCrash().toStringAsFixed(e.decimalPlaces.getOrCrash())} ~ ${e.end.getOrCrash().toStringAsFixed(e.decimalPlaces.getOrCrash())}")
            .toList();



        final selectedHeightRange = selectedWeight?.range;
        if(selectedHeightRange == null) {
          context.read<BodySpecBloc>().add(BodySpecEvent.setWeight(selectedRange: weights[weights.length ~/ 2]));
        }

        int initPosition = selectedHeightRange != null
            ? weights.indexOf(selectedHeightRange)
            : (weights.length / 2).round();
        return Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              CommonButtons(
                buttons: weightUnits.map((e) => ButtonInfo(title: e.name)).toList(),
                initialIndex: weightUnits.indexOf(selectedWeight?.unit ?? weightUnits.first),
                containerColor: AppStyle.white.withOpacity(0.1),
                buttonColor: AppStyle.black,
                buttonInactiveColor: AppStyle.transparent,
                buttonBorderColor: AppStyle.white.withOpacity(0.1),
                buttonBorderInactiveColor: AppStyle.transparent,
                buttonTextColor: AppStyle.accentColor,
                buttonInactiveTextColor: AppStyle.white,
                buttonVerticalPadding: 10,
                containerPadding: 2,
                onClick: (index) {
                  bodySpecBloc.add(BodySpecEvent.setWeightUnit(
                      selectedUnit: weightUnits[index]));
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CommonTip(
                tipTitle: "안전한 장비 추천을 위해 최대한 정확하게 선택해주세요!",
                tipTitleStyle: AppTextStyle.caption00.copyWith(
                  color: AppStyle.white,
                ),
                iconColor: AppStyle.accentOrange,
              ),
              Expanded(
                child: WheelChooser(
                  onValueChanged: (s) {
                    int selectedIndex = weightValues.indexOf(s);
                    bodySpecBloc.add(BodySpecEvent.setWeight(
                      selectedRange: weights[selectedIndex],
                    ));
                  },
                  datas: weightValues,
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
