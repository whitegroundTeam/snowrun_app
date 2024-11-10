import 'package:doortoout/app_style.dart';
import 'package:doortoout/presentation/core/common_button.dart';
import 'package:doortoout/presentation/core/common_buttons/button_info.dart';
import 'package:flutter/widgets.dart';

class CommonButtons extends StatefulWidget {
  final List<ButtonInfo> buttons;
  final int? initialIndex;
  final bool? isRow;
  final Color? containerColor;
  final double? containerPadding;
  final double? maxWidth;
  final double? buttonVerticalPadding;
  final Color? buttonColor;
  final Color? buttonInactiveColor;
  final Color? buttonBorderColor;
  final Color? buttonBorderInactiveColor;
  final Color? buttonTextColor;
  final Color? buttonInactiveTextColor;
  final double? borderWidth;
  final Function(int index)? onClick;

  const CommonButtons({
    super.key,
    this.isRow = true,
    required this.buttons,
    this.initialIndex = 0,
    this.containerColor = AppStyle.transparent,
    this.containerPadding = 0,
    this.maxWidth,
    this.buttonVerticalPadding,
    this.buttonColor = AppStyle.inputFieldBackground,
    this.buttonInactiveColor = AppStyle.inputFieldBackground,
    this.buttonBorderColor = AppStyle.accentColor,
    this.buttonBorderInactiveColor = AppStyle.transparent,
    this.buttonTextColor = AppStyle.accentColor,
    this.buttonInactiveTextColor = AppStyle.white,
    this.borderWidth = 1,
    this.onClick,
  });

  @override
  State createState() => CommonButtonsState();
}

class CommonButtonsState extends State<CommonButtons> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(widget.containerPadding ?? 0),
      constraints:
          //TODO : 태블릿과 모바일 구분해야함
          BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width),
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: widget.isRow == true
          ? Row(
              children: widget.buttons.asMap().entries.map((entry) {
                return Expanded(child: _buildButton(entry.key, entry.value));
              }).toList(),
            )
          : Wrap(
              runSpacing: 4,
              spacing: 4,
              children: widget.buttons.asMap().entries.map((entry) {
                return _buildButton(entry.key, entry.value);
              }).toList(),
            ),
    );
  }

  Widget _buildButton(int index, ButtonInfo buttonInfo) {
    final isSelected = selectedIndex == index;
    return Container(
      padding: EdgeInsets.only(
        left: index > 0 ? 8 : 0,
      ),
      child: CommonButton(
        animationDelay: 0,
        onTap: () async {
          final isValid = await widget.onClick?.call(index) ?? true;
          if(isValid) {
            setState(() {
              selectedIndex = index;
            });
          }
        },
        buttonVerticalPadding: widget.buttonVerticalPadding,
        text: buttonInfo.title,
        description: buttonInfo.description,
        borderWidth: widget.borderWidth ?? 1,
        textColor: isSelected
            ? widget.buttonTextColor
            : widget.buttonInactiveTextColor,
        borderColor: isSelected
            ? widget.buttonBorderColor
            : widget.buttonBorderInactiveColor,
        buttonColor:
            isSelected ? widget.buttonColor : widget.buttonInactiveColor,
      ),
    );
  }
}
