import 'package:flutter/material.dart';

class CommonDialog extends StatefulWidget {
  final String title;
  final String description;
  final Widget? contentsWidget;
  final String? negativeButtonText;
  final Color? negativeButtonTextColor;
  final String? buttonText;
  final Color? buttonTextColor;
  final VoidCallback? onPressedNegativeButton;
  final VoidCallback? onPressedButton;

  const CommonDialog({
    super.key,
    required this.title,
    required this.description,
    required this.contentsWidget,
    required this.negativeButtonText,
    required this.buttonText,
    this.negativeButtonTextColor,
    this.buttonTextColor,
    required this.onPressedNegativeButton,
    required this.onPressedButton,
  });

  @override
  CommonDialogState createState() => CommonDialogState();
}

class CommonDialogState extends State<CommonDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24),
      decoration: BoxDecoration(
        color: const Color(0xffF6F6F6),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Visibility(
            visible: widget.title.isNotEmpty == true,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
              child: Text(
                widget.title,
                style:
                const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
          ),
          Visibility(
            visible: widget.description.isNotEmpty == true,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              child: Text(
                widget.description,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          Visibility(
            visible: widget.contentsWidget != null,
            child: widget.contentsWidget ?? const SizedBox(),
          ),
          const Divider(
            color: Color(0xffDDDDDD),
            height: 0.5,
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(
                  width: 16,
                ),
                Visibility(
                  visible: widget.negativeButtonText?.isNotEmpty == true,
                  child: Expanded(
                    child: TextButton(
                      onPressed: widget.onPressedNegativeButton,
                      child: Text(
                        widget.negativeButtonText ?? "",
                        style: TextStyle(
                            fontSize: 16,
                            color: widget.negativeButtonTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Visibility(
                  visible: widget.buttonText?.isNotEmpty == true,
                  child: Expanded(
                    child: TextButton(
                      onPressed: widget.onPressedButton,
                      child: Text(
                        widget.buttonText ?? "",
                        style: TextStyle(
                            fontSize: 16,
                            color: widget.buttonTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

showCommonDialog(
    BuildContext context, {
      String? title,
      String? description,
      Widget? contentsWidget,
      String? negativeButtonText,
      String? buttonText,
      bool? dismissible,
      VoidCallback? onPressedNegativeButton,
      VoidCallback? onPressedButton,
    }) async {
  await showDialog(
    context: context,
    barrierDismissible: dismissible ?? false,
    builder: (BuildContext context) {
      return CommonDialog(
        title: title ?? '',
        description: description ?? '',
        contentsWidget: contentsWidget,
        negativeButtonText: negativeButtonText,
        buttonText: buttonText,
        onPressedNegativeButton: () {
          onPressedNegativeButton?.call();
        },
        onPressedButton: () {
          onPressedButton?.call();
        },
      );
    },
  );
}
