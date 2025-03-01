// import 'package:doortoout/app_style.dart';
// import 'package:doortoout/presentation/core/common_detector.dart';
// import 'package:doortoout/presentation/core/common_tip.dart';
// import 'package:doortoout/presentation/core/typography/app_text_style.dart';
// import 'package:flutter/material.dart';
//
// class CommonCheckOptionItem extends StatefulWidget {
//   final String? title;
//   final DateTime? returnDateTime;
//
//   const CommonCheckOptionItem({super.key, this.title, this.returnDateTime});
//
//   @override
//   State createState() => CommonCheckOptionItemState();
// }
//
// class CommonCheckOptionItemState extends State<CommonCheckOptionItem> {
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Visibility(
//           visible: widget.title != null,
//           child: Padding(
//             padding: const EdgeInsets.only(
//               bottom: 12,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   '${widget.title}',
//                   style: AppTextStyle.heading02,
//                 ),
//                 const SizedBox(
//                   width: 8,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         CommonDetector(
//           onTap: () {
//             setState(() {
//               isSelected = !isSelected;
//             });
//           },
//           child: Container(
//             padding: const EdgeInsets.symmetric(
//               vertical: 12,
//             ),
//             decoration: BoxDecoration(
//               color: AppStyle.inputFieldBackground,
//               borderRadius: BorderRadius.circular(12.0),
//               border: Border.all(
//                 color: isSelected
//                     ? AppStyle.accentColor
//                     : AppStyle.inputFieldInactiveBorder,
//                 width: 1,
//               ),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(
//                   width: 16,
//                 ),
//                 Icon(
//                   Icons.check,
//                   color: isSelected
//                       ? AppStyle.accentColor
//                       : AppStyle.inputFieldInactiveBorder,
//                   size: 40,
//                 ),
//                 const SizedBox(
//                   width: 12,
//                 ),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       '스키장에서 반납하기',
//                       style: AppTextStyle.body01,
//                     ),
//                     Text(
//                       '+5000원',
//                       style: AppTextStyle.body03,
//                     ),
//                   ],
//                 ),
//                 const SizedBox(
//                   width: 16,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.only(
//             top: 12,
//           ),
//           child: CommonTip(
//             tipTitle: "렌탈/반납 정보는 연락처로 보내드립니다!",
//             tipTitleStyle: AppTextStyle.caption00.copyWith(
//               color: AppStyle.white,
//             ),
//             iconColor: AppStyle.accentOrange,
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:doortoout/app_style.dart';
import 'package:doortoout/presentation/core/common_detector.dart';
import 'package:doortoout/presentation/core/common_tip.dart';
import 'package:doortoout/presentation/core/typography/app_text_style.dart';
import 'package:flutter/material.dart';

class CommonCheckOptionItem extends StatefulWidget {
  final String? title;
  final DateTime? returnDateTime;

  const CommonCheckOptionItem({super.key, this.title, this.returnDateTime});

  @override
  State createState() => CommonCheckOptionItemState();
}

class CommonCheckOptionItemState extends State<CommonCheckOptionItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const CommonTitle(
        //   title: "반납 방법",
        //   // isRequired: true,
        //   horizontalPadding: 8,
        //   verticalPadding: 8,
        // ),

        Visibility(
          visible: widget.title != null,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 12,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${widget.title}',
                  style: AppTextStyle.headingShadow02,
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
        CommonDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: AppStyle.inputFieldBackground,
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: isSelected
                    ? AppStyle.accentColor
                    : AppStyle.inputFieldInactiveBorder,
                width: 1,
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.check,
                  color: isSelected
                      ? AppStyle.accentColor
                      : AppStyle.inputFieldInactiveBorder,
                  size: 16,
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '스키장에서 반납하기(+5000원)',
                      style: AppTextStyle.caption01,
                    ),
                    // Text(
                    //   '+5000원',
                    //   style: AppTextStyle.caption00,
                    // ),
                  ],
                ),
                const SizedBox(
                  width: 16,
                ),
              ],
            ),
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: 12,
        //   ),
        //   child: CommonTip(
        //     tipTitle: "렌탈/반납 정보는 연락처로 보내드립니다!",
        //     tipTitleStyle: AppTextStyle.caption00.copyWith(
        //       color: AppStyle.white,
        //     ),
        //     iconColor: AppStyle.accentOrange,
        //   ),
        // ),
      ],
    );
  }
}
