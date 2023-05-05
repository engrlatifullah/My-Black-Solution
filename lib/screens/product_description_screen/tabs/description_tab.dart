import 'package:flutter/material.dart';
import 'package:my_black_solution/Resources/color_manager.dart';
import 'package:my_black_solution/Resources/style_manager.dart';

class DescriptionTab extends StatelessWidget {
  const DescriptionTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Questions & Answers (38)",
              style: getmediumtextStyle(
                fontSize: 14,
                color: ColorManager.greyColor,
              ),
            ),
            Text(
              "Vendor Policies (3)",
              style: getmediumtextStyle(
                fontSize: 14,
                color: ColorManager.greyColor,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Icon(
              Icons.info_outline,
              color: ColorManager.mainColor,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Product Descriptions",
              style: getsemiboldtextStyle(
                  fontSize: 15, color: ColorManager.whiteColor),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Key Ingredients",
          style: getsemiboldtextStyle(
              fontSize: 15, color: ColorManager.whiteColor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet tristique odio. ",
          style: getregulartextStyle(
              fontSize: 15, color: ColorManager.greyColor),
        ),
        Divider(color: ColorManager.mainColor,),
        SizedBox(
          height: 20,
        ),
        Text(
          "How does it protect my skin?",
          style: getsemiboldtextStyle(
              fontSize: 15, color: ColorManager.whiteColor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Nunc massa sapien, rhoncus ac felis et, pretium semper arcu",
          style: getregulartextStyle(
              fontSize: 15, color: ColorManager.greyColor),
        ),
        Divider(color: ColorManager.mainColor,),
        SizedBox(
          height: 20,
        ),
        Text(
          "How does it protect my skin?",
          style: getsemiboldtextStyle(
              fontSize: 15, color: ColorManager.whiteColor),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet tristique odio. Pellentesque pharetra, sapien eget viverra vulputate, ipsum dui rhoncus mauris, vitae tristique massa nisi eu metus.",
          style: getregulartextStyle(
              fontSize: 15, color: ColorManager.greyColor),
        ),
        Divider(color: ColorManager.mainColor,),
      ],
    );
  }
}
