import 'package:flutter/material.dart';
import 'package:my_black_solution/Resources/color_manager.dart';
import 'package:my_black_solution/Resources/style_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_black_solution/Widgets/roundButton.dart';
import 'package:my_black_solution/Widgets/roundButtonBorder.dart';
import '../../Resources/assets_manager.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class MarketPlaceFilter extends StatefulWidget {
  const MarketPlaceFilter({Key? key}) : super(key: key);

  @override
  State<MarketPlaceFilter> createState() => _MarketPlaceFilterState();
}

class _MarketPlaceFilterState extends State<MarketPlaceFilter> {
  bool type = false;
  bool priceRange = false;
  double sliderValue = 100;
  bool cosmantic = false;
  bool hairCare = false;
  bool skinCare = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width,
      backgroundColor: ColorManager.transparentColor,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: (){
          Navigator.pop(context);
        },
        child: Container(
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height * 0.1,
          ),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                ImageManager.appBackground,
              ),
            ),
          ),
          child: ListView(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.home_rounded,
                    color: ColorManager.mainColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Home",
                    style: getsemiboldtextStyle(
                        fontSize: 18, color: ColorManager.mainColor),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Filter",
                    style: getsemiboldtextStyle(
                        fontSize: 18, color: ColorManager.whiteColor),
                  ),
                  Icon(
                    FontAwesomeIcons.bars,
                    color: ColorManager.mainColor,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: ColorManager.mainColor,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Type",
                    style: getsemiboldtextStyle(
                        fontSize: 18, color: ColorManager.whiteColor),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        type = !type;
                      });
                    },
                    child: Icon(
                      type
                          ? FontAwesomeIcons.chevronUp
                          : FontAwesomeIcons.chevronDown,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              type
                  ? Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Checkbox(
                                value: cosmantic,
                                checkColor: ColorManager.blackColor,
                                fillColor: MaterialStateProperty.all(
                                    ColorManager.mainColor),
                                onChanged: (v) {
                                  setState(() {
                                    cosmantic = v!;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Cosmentics (57)",
                              style: getregulartextStyle(
                                  fontSize: 16,
                                  color: cosmantic
                                      ? ColorManager.mainColor
                                      : ColorManager.whiteColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Checkbox(
                                value: hairCare,
                                checkColor: ColorManager.blackColor,
                                fillColor: MaterialStateProperty.all(
                                    ColorManager.mainColor),
                                onChanged: (v) {
                                  setState(() {
                                    hairCare = v!;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Hair Care (24)",
                              style: getregulartextStyle(
                                  fontSize: 16,
                                  color: hairCare
                                      ? ColorManager.mainColor
                                      : ColorManager.whiteColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              width: 30,
                              child: Checkbox(
                                value: skinCare,
                                checkColor: ColorManager.blackColor,
                                fillColor: MaterialStateProperty.all(
                                    ColorManager.mainColor),
                                onChanged: (v) {
                                  setState(() {
                                    skinCare = v!;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "Skin Care (32)",
                              style: getregulartextStyle(
                                  fontSize: 15,
                                  color: skinCare
                                      ? ColorManager.mainColor
                                      : ColorManager.whiteColor),
                            )
                          ],
                        ),
                      ],
                    )
                  : SizedBox(),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: ColorManager.mainColor,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price Range",
                    style: getsemiboldtextStyle(
                        fontSize: 18, color: ColorManager.whiteColor),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        priceRange = !priceRange;
                      });
                    },
                    child: Icon(
                      priceRange
                          ? FontAwesomeIcons.chevronUp
                          : FontAwesomeIcons.chevronDown,
                      color: ColorManager.whiteColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              priceRange
                  ? Column(
                      children: [
                        SfSliderTheme(
                          data: SfSliderThemeData(
                            thumbRadius: 15,
                            thumbStrokeColor: ColorManager.mainColor,
                            thumbStrokeWidth: 4,
                            activeTrackHeight: 12,
                            inactiveTrackHeight: 12,
                            activeTrackColor: ColorManager.mainColor,
                            inactiveTrackColor: ColorManager.darkmainColor,
                          ),
                          child: SfSlider(
                            max: 1200,
                            min: 10,
                            thumbIcon: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ColorManager.blackColor),
                            ),
                            value: sliderValue,
                            onChanged: (value) {
                              setState(() {
                                sliderValue = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: "Min: ",
                                  style: getregulartextStyle(
                                    fontSize: 12,
                                    color: ColorManager.greyColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "\$10.00",
                                      style: getmediumtextStyle(
                                        fontSize: 14,
                                        color: ColorManager.mainColor,
                                      ),
                                    ),
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: "Max: ",
                                  style: getregulartextStyle(
                                    fontSize: 12,
                                    color: ColorManager.greyColor,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "\$1200.00",
                                      style: getmediumtextStyle(
                                        fontSize: 14,
                                        color: ColorManager.mainColor,
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Price",
                              style: getmediumtextStyle(
                                  fontSize: 16, color: ColorManager.greyColor),
                            ),
                            Text(
                              "\$${sliderValue.toStringAsFixed(0)}",
                              style: getsemiboldtextStyle(
                                  fontSize: 18, color: ColorManager.whiteColor),
                            ),
                          ],
                        )
                      ],
                    )
                  : SizedBox(),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: ColorManager.mainColor,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Rating",
                style: getsemiboldtextStyle(
                    fontSize: 18, color: ColorManager.whiteColor),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: ColorManager.mainColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                  Icon(
                    Icons.star,
                    color: ColorManager.whiteColor,
                    size: 18,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: ColorManager.mainColor,
              ),
              SizedBox(
                height: 20,
              ),
              RoundButton(title: 'Apply', onTap: (){}, loading: false),
              SizedBox(height: 10,),
              RoundButtonBorder(title: 'Clear Filters', onTap: (){
                setState(() {

                  sliderValue = 100;
                  cosmantic = false;
                  hairCare = false;
                  skinCare = false;
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
