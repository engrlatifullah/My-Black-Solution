import 'package:flutter/material.dart';

import '../Resources/color_manager.dart';
class RoundBorderButtonWithIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  const RoundBorderButtonWithIcon({
    Key? key, required this.icon, required this.title, required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 57,
        decoration: BoxDecoration(
            border: Border.all(color: ColorManager.mainColor),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: ColorManager.mainColor,),
            SizedBox(width: 10,),
            Text(
              title,
              style: TextStyle(fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                  color: ColorManager.mainColor),
            ),
          ],
        ),
      ),
    );
  }
}