import 'package:flutter/material.dart';
import 'package:my_black_solution/Resources/color_manager.dart';
import 'package:my_black_solution/Widgets/roundButton.dart';
import 'package:my_black_solution/Widgets/roundButtonBorder.dart';

import '../../Resources/assets_manager.dart';
import '../../Resources/fonts_manager.dart';
import '../../Resources/style_manager.dart';
import '../../Widgets/custom_button.dart';
import '../../Widgets/round_button_with_icon.dart';
import '../product_description_screen/product_description_screen.dart';

class MarketProduct extends StatefulWidget {
  const MarketProduct({Key? key}) : super(key: key);

  @override
  State<MarketProduct> createState() => _MarketProductState();
}

class _MarketProductState extends State<MarketProduct> {
  final List<String> images = [
    ImageManager.black,
    ImageManager.green,
    ImageManager.yellow,
    ImageManager.green,
  ];
  bool tap = false;
  PageController _pageController = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorManager.mainColor,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.85,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              ImageManager.appBackground,
            ),
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                'Pepper Shaker Gift Set',
                style: getmediumtextStyle(
                    fontSize: 16, color: ColorManager.mainColor),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: ColorManager.mainColor,
            ),
            SizedBox(
              height: 10,
            ),
            //pageView
            SizedBox(
              width: double.infinity,
              height: 180,
              child: Stack(
                children: [
                  PageView.builder(
                    controller: _pageController,
                    itemCount: images.length,
                    onPageChanged: (v) {
                      setState(() {
                        pageIndex = v;
                      });
                    },
                    itemBuilder: (_, index) {
                      return Container(
                        width: double.infinity,
                        height: 180,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              images[index],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              tap = !tap;
                            });
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black),
                            child: Center(
                              child: Icon(
                                tap ? Icons.favorite : Icons.favorite_border,
                                color: tap
                                    ? ColorManager.mainColor
                                    : ColorManager.whiteColor,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                _pageController.previousPage(
                                    duration: Duration(microseconds: 200),
                                    curve: Curves.easeInToLinear);
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: pageIndex == 0
                                    ? ColorManager.darkmainColor
                                    : ColorManager.mainColor,
                                child: Icon(
                                  Icons.arrow_left_outlined,
                                  color: ColorManager.whiteColor,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                _pageController.nextPage(
                                    duration: Duration(microseconds: 200),
                                    curve: Curves.easeInToLinear);
                              },
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: pageIndex == images.length - 1
                                    ? ColorManager.darkmainColor
                                    : ColorManager.mainColor,
                                child: Icon(
                                  Icons.arrow_right_outlined,
                                  color: ColorManager.whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: images.map((e) {
                return Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(
                          e.toString(),
                        ),
                      )),
                );
              }).toList(),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
              text: TextSpan(
                text: 'From:',
                style: getmediumtextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Pepper Buddies',
                    style: getmediumtextStyle(
                        fontSize: 17, color: ColorManager.mainColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '\$450',
                  style: getsemiboldtextStyle(
                      fontSize: 14, color: ColorManager.mainColor),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('\$400',
                    style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                        fontWeight: FontweightManager.semiBold,
                        fontFamily: 'Poppins')),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: ColorManager.mainColor,
                      size: 14,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorManager.mainColor,
                      size: 14,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorManager.mainColor,
                      size: 14,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorManager.mainColor,
                      size: 14,
                    ),
                    Icon(
                      Icons.star,
                      color: ColorManager.whiteColor,
                      size: 14,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            RoundButton(
                title: 'View Product',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return ProductDescription(
                          images: images,
                        );
                      },
                    ),
                  );
                },
                loading: false),
            SizedBox(
              height: 20,
            ),
            RoundButton(title: 'Buy Now', onTap: () {}, loading: false),
            SizedBox(
              height: 20,
            ),

            RoundBorderButtonWithIcon(
              icon: Icons.shopping_cart_outlined,
              title: "Add to Basket",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
