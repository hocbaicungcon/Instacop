import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instacop/link.dart';
import 'package:instacop/src/helpers/TextStyle.dart';
import 'package:instacop/src/helpers/colors_constant.dart';
import 'package:instacop/src/helpers/screen.dart';
import 'package:instacop/src/widgets/card_product.dart';

class ProductListView extends StatefulWidget {
//  ProductListView({this.title});
//  final String title;
  @override
  _DetailBannerScreenState createState() => _DetailBannerScreenState();
}

class _DetailBannerScreenState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    ConstScreen.setScreen(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData.fallback(),
            backgroundColor: kColorWhite,
            centerTitle: true,
            title: Text(
              'NEW PAGE',
              style: kValueTextStyle,
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.shoppingBag,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, 'customer_cart_page');
                },
              ),
            ]),
        body: Container(
          color: kColorWhite,
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // Wallpaper
                  Container(
                    height: ConstScreen.setSize(450),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(KImageAddress + 'banner_8.jpg'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: ConstScreen.setSize(60),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: ConstScreen.setSize(30),
                      right: ConstScreen.setSize(30),
                      bottom: ConstScreen.setSize(30),
                    ),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: ConstScreen.setSize(30),
                      mainAxisSpacing: ConstScreen.setSize(40),
                      childAspectRatio: 69 / 120,
                      children: <Widget>[
                        ProductCard(
                          productName: 'Hoodies COR',
                          image: 'hoodie_1.jpg',
                          price: 100000,
                          salePrice: 9999,
                          onTap: () {
                            print('TAP');
                          },
                        ),
                        ProductCard(
                          productName: 'Hoodies COR',
                          image: 'hoodie_1.jpg',
                          price: 100000,
                          salePrice: 9999,
                          onTap: () {},
                        ),
                        ProductCard(
                          productName: 'Hoodies COR',
                          image: 'hoodie_1.jpg',
                          price: 100000,
                          salePrice: 9999,
                          onTap: () {},
                        ),
                        ProductCard(
                          productName: 'Hoodies COR',
                          image: 'hoodie_1.jpg',
                          price: 100000,
                          salePrice: 9999,
                          onTap: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
