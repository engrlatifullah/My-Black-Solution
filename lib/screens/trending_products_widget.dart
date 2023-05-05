import 'package:flutter/material.dart';

import '../../../../Resources/assets_manager.dart';
import '../../../../Resources/color_manager.dart';
import '../../../../Resources/fonts_manager.dart';
import '../../../../Resources/style_manager.dart';
import '../../../../Widgets/custom_button.dart';
import 'marcket_product_screen/marcket_product_screen.dart';

class TrendingProductsWidget extends StatelessWidget {
  String img;

  TrendingProductsWidget({Key? key, required double width, required this.img})
      : _width = width,
        super(key: key);

  final double _width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: 185,
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 115,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: AssetImage(img), fit: BoxFit.cover),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    width: 32,
                                    height: 32,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.black),
                                    child: Center(
                                      child: Icon(
                                        Icons.shopping_cart_outlined,
                                        color: ColorManager.mainColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 115,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pepper Shaker Gift Set',
                            style: getsemiboldtextStyle(
                                fontSize: 14, color: Colors.white),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'From:',
                              style: getregulartextStyle(
                                  fontSize: 14, color: Colors.grey),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' Pepper Buddies',
                                  style: getsemiboldtextStyle(
                                      fontSize: 14,
                                      color: ColorManager.mainColor),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$450',
                                style: getsemiboldtextStyle(
                                    fontSize: 14,
                                    color: ColorManager.mainColor),
                              ),
                              Text('\$400',
                                  style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      color: Colors.grey,
                                      fontWeight: FontweightManager.semiBold,
                                      fontFamily: 'Poppins')),
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
                          Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) {
                                            return MarketProduct();
                                          });
                                    },
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: ColorManager.mainColor),
                                      child: Center(
                                        child: Text(
                                          'View Product',
                                          style: getsemiboldtextStyle(
                                              fontSize: 8,
                                              color: ColorManager.whiteColor),
                                        ),
                                      ),
                                    ),
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Expanded(
                                  flex: 4,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: ColorManager.mainColor)),
                                      child: Center(
                                        child: Text(
                                          'Quick View',
                                          style: getsemiboldtextStyle(
                                              fontSize: 8,
                                              color: ColorManager.mainColor),
                                        ),
                                      ),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
