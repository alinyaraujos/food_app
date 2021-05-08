import 'package:flutter/material.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/screens/cart/widgets/button_confirm_widget.dart';
import 'package:food_app/screens/cart/widgets/card_cart_widget.dart';
import 'package:food_app/screens/cart/widgets/item_widget.dart';

class CartScreen extends StatelessWidget {
  final productCart = [
    {
      "name": "Burgers",
      "price": 23.00,
      "description":
          "A signature flame-grilled chicken patty topped with smoked beef",
      "imageUrl": AppImage.beefBurger,
    },
    {
      "name": "Burgers",
      "price": 16.00,
      "description":
          "A signature flame-grilled chicken patty topped with smoked beef",
      "imageUrl": AppImage.beefBurger,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  itemCount: productCart.length,
                  itemBuilder: (context, index) {
                    var product = productCart[index];
                    return CardCartWidget(
                      title: product["name"].toString(),
                      image: product["imageUrl"].toString(),
                      price: double.parse(product["price"].toString()),
                      amount: "2",
                      onAddTapped: () {},
                      onMinusTapped: () {},
                      onRemoveProduct: () {},
                    );
                  },
                ),
              ),
              ItemWidget(
                title: "Item total",
                value: "R\$ 39.00",
                styleTitle: AppTextStyles.subtitleMedium,
                styleValue: AppTextStyles.subtitleMediumd14,
              ),
              ItemWidget(
                title: "Tax",
                value: "R\$ 0.25",
                styleTitle: AppTextStyles.subtitleMedium,
                styleValue: AppTextStyles.subtitleMediumd14,
              ),
              ItemWidget(
                title: "Total:",
                value: "R\$ 39.25",
                styleTitle: AppTextStyles.titleSemiBold,
                styleValue: AppTextStyles.titleSemiBold,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 25,
            horizontal: 16,
          ),
          child: Row(
            children: [
              Expanded(child: ButtonConfirmWidget()),
            ],
          ),
        ),
      ],
    );
  }
}
