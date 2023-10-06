import 'package:flutter/material.dart';
import 'package:snowrun_app/presentation/core/common_detector.dart';

class EmailAuthButton extends StatefulWidget {
  const EmailAuthButton({super.key});

  @override
  State createState() => EmailAuthButtonState();
}

class EmailAuthButtonState extends State<EmailAuthButton> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          child: Container(
          height: 150,
          color: Colors.green,
        ),),

        CommonDetector(
          onTap: () {
            setState(() {
              isOpened = true;
            });
          },
          child: Container(
            height: 150,
            color: Colors.yellow,
          ),
        ),
      ],
    );
    if (isOpened) {
      return AnimatedOpacity(
        opacity: isOpened ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 10000),
        child: Container(
          height: 150,
          color: Colors.green,
        ),
      );
    } else {
      return CommonDetector(
        onTap: () {
          setState(() {
            isOpened = true;
          });
        },
        child: Container(
          height: 150,
          color: Colors.yellow,
        ),
      );
    }
  }
}

//TODO : 버튼 누르면 쭉 열리게
