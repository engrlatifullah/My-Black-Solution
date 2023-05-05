import 'package:flutter/material.dart';
import 'package:my_black_solution/Resources/color_manager.dart';

class RoundButtonBorder extends StatelessWidget {
  String title;
  VoidCallback onTap;

  RoundButtonBorder({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 57,
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.mainColor),
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                  color: ColorManager.mainColor),
          ),
        ),
      ),
    );
  }
}
