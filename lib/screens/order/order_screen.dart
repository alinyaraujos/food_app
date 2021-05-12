import 'package:flutter/material.dart';

import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/models/product.dart';
import 'package:food_app/screens/order/widgets/around_amount_widget.dart';
import 'package:food_app/screens/order/widgets/button_add_cart.dart';
import 'package:food_app/screens/order/widgets/button_shadow_widget.dart';
import 'package:food_app/screens/order/widgets/size_product_widget.dart';
import 'package:food_app/util/app_icons_icons.dart';

class OrderScreen extends StatelessWidget {
  Product product;

  OrderScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonShadowWidget(
                          icon: Icon(Icons.arrow_back_ios_outlined),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        ButtonShadowWidget(
                          icon:
                              Icon(AppIcons.like_outline, color: AppColors.red),
                        )
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 70, right: 70),
                      child: Text(
                        product.name,
                        style: AppTextStyles.titleSemiBold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 70, right: 70),
                      child: Text(
                        product.description,
                        style: AppTextStyles.body,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Image.asset(product.imageUrl),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizeProductWidget(
                            title: "P",
                            selected: true,
                            onTap: () {
                              print("P");
                            },
                          ),
                          SizeProductWidget(
                            title: "M",
                            selected: false,
                            onTap: () {
                              print("M");
                            },
                          ),
                          SizeProductWidget(
                            title: "G",
                            selected: false,
                            onTap: () {
                              print("G");
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AroundAmountWidget(
                            icon: Icons.remove,
                            onTap: () {
                              print("remove");
                            },
                          ),
                          SizedBox(width: 50),
                          Text(
                            "5",
                            style: AppTextStyles.letterAmount,
                          ),
                          SizedBox(width: 50),
                          AroundAmountWidget(
                            icon: Icons.add,
                            onTap: () {
                              print("add");
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 80,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: Colors.white,
                  height: 80,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16, top: 19),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Preço",
                                style: AppTextStyles.heading,
                              ),
                              Text(
                                "R\$ ${product.price}",
                                style: AppTextStyles.letterAmount,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ButtonAddCart(
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
