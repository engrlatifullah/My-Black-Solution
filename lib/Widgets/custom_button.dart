import 'dart:ffi';

import 'package:flutter/material.dart';

import '../Resources/color_manager.dart';
import '../Resources/style_manager.dart';

class CustomButtonWidget extends StatelessWidget {
  String title;
  VoidCallback onTap;
  bool border = false;
  double height;
  double width;
  double titleSize;

  CustomButtonWidget(
      {required this.title,
      required this.onTap,
      required this.border,
      required this.height,
      required this.width,
      required this.titleSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: border == true
              ? BoxDecoration(
                  border: Border.all(color: ColorManager.mainColor),
                  borderRadius: BorderRadius.circular(4),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: ColorManager.mainColor,
                ),
          child: Center(
            child: Text(
              title,
              style: getmediumtextStyle(
                  fontSize: titleSize,
                  color: border == true
                      ? ColorManager.mainColor
                      : ColorManager.whiteColor),
            ),
          ),
        ));
  }
}
