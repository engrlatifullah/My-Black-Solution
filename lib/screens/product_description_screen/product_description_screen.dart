import 'package:flutter/material.dart';
import 'package:my_black_solution/Resources/style_manager.dart';
import 'package:my_black_solution/Widgets/roundButton.dart';
import 'package:my_black_solution/Widgets/roundButtonBorder.dart';
import 'package:my_black_solution/screens/product_description_screen/tabs/description_tab.dart';

import '../../Resources/assets_manager.dart';
import '../../Resources/color_manager.dart';
import '../../Resources/fonts_manager.dart';
import '../../Widgets/round_button_with_icon.dart';
import '../market_place_filter_screen/market_place_filter_screen.dart';

class ProductDescription extends StatefulWidget {
  final List<String> images;

  const ProductDescription({Key? key, required this.images}) : super(key: key);

  @override
  State<ProductDescription> createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  PageController _pageController = PageController();
  int pageIndex = 0;
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          key: _scaffold,
          endDrawer: MarketPlaceFilter(),
          body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  ImageManager.appBackground,
                ),
              ),
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () {
                          _scaffold.currentState!.openEndDrawer();
                        },
                        child: Image.asset(
                          IconManager.bars,
                          height: 25,
                          width: 25,
                        ))),
                SizedBox(
                  height: 20,
                ),
                //PageView
                SizedBox(
                  width: double.infinity,
                  height: 180,
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: widget.images.length,
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
                              widget.images[index],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
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
                                  backgroundColor:
                                      pageIndex == widget.images.length - 1
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
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Coarse Pink\nHimalaya Cream",
                  style: getsemiboldtextStyle(
                      fontSize: 30,
                      color: ColorManager.whiteColor,
                      fontWeight: FontweightManager.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text('\$500',
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontweightManager.semiBold,
                            fontFamily: 'Poppins')),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '\$450',
                      style: getsemiboldtextStyle(
                          fontSize: 18, color: ColorManager.mainColor),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Save 10%',
                      style: getmediumtextStyle(
                          fontSize: 16, color: ColorManager.mainColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer tempus, orci in condimentum sagittis, urna felis aliquet ipsum, ac ornare ex tortor eu purus.",
                  style: getmediumtextStyle(
                      color: ColorManager.greyColor, fontSize: 14),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
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
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "(4.2/5)",
                      style: getmediumtextStyle(
                          fontSize: 14, color: ColorManager.greyColor),
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
                RoundButton(title: "Buy Now", onTap: () {}, loading: false),
                SizedBox(
                  height: 20,
                ),
                RoundBorderButtonWithIcon(
                  icon: Icons.shopping_cart_outlined,
                  title: "Add to Basket",
                  onTap: () {},
                ),
                SizedBox(
                  height: 20,
                ),
                //top ratted saller card
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(ImageManager.intro1),
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              ColorManager.blackColor.withOpacity(0.5),
                              ColorManager.blackColor,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage(ImageManager.intro2),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Eve Body Care",
                                      style: getboldtextStyle(
                                          fontSize: 16,
                                          color: ColorManager.whiteColor),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: List.generate(
                                        5,
                                        (index) => Icon(
                                          Icons.star,
                                          color: ColorManager.mainColor,
                                          size: 18,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Top rated saller",
                                      style: getmediumtextStyle(
                                          fontSize: 12,
                                          color: ColorManager.greyColor),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RoundButtonBorder(
                              title: 'Contact Us',
                              onTap: () {},
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RoundBorderButtonWithIcon(
                              title: 'Add to Favourites',
                              onTap: () {},
                              icon: Icons.favorite,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                  unselectedLabelColor: ColorManager.greyColor,
                  labelStyle: getsemiboldtextStyle(
                      fontSize: 15, color: ColorManager.greyColor),
                  labelPadding: EdgeInsets.zero,
                  isScrollable: false,
                  labelColor: ColorManager.mainColor,
                  indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    borderSide:
                        BorderSide(color: ColorManager.mainColor, width: 2),
                  ),
                  tabs: [
                    Tab(
                      text: 'Descriptions',
                    ),
                    Tab(
                      text: 'Reviews',
                    ),
                    Tab(
                      text: 'Video',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 530,
                  child: TabBarView(
                    children: [
                      DescriptionTab(),
                      Container(),
                      Container(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
