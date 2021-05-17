import 'package:flutter/material.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/models/product.dart';
import 'package:food_app/screens/cart/cart_controller.dart';
import 'package:food_app/screens/cart/widgets/button_confirm_widget.dart';
import 'package:food_app/screens/cart/widgets/card_cart_widget.dart';
import 'package:food_app/screens/cart/widgets/item_widget.dart';
import 'package:provider/provider.dart';

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

  late CartController controller;

  @override
  Widget build(BuildContext context) {
    controller = Provider.of<CartController>(context);

    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: controller.listProductsNotifier,
                  builder: (context, List<Product> value, _) {
                    return ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        var product = value[index];

                        return ValueListenableBuilder(
                          valueListenable: controller.quantitiesNotifier[index],
                          builder: (context, value, _) {
                            return CardCartWidget(
                              title: product.name,
                              image: product.imageUrl,
                              price: product.price,
                              amount: "$value",
                              onAddTapped: () {
                                int newQtd =
                                    controller.quantityAt(index: index) + 1;

                                controller.setQuantityAt(
                                  index: index,
                                  newQtd: newQtd,
                                );
                              },
                              onMinusTapped: () {
                                if (controller.quantityAt(index: index) > 1) {
                                  int newQtd =
                                      controller.quantityAt(index: index) - 1;

                                  controller.setQuantityAt(
                                    index: index,
                                    newQtd: newQtd,
                                  );
                                }
                              },
                              onRemoveProduct: () {},
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              ValueListenableBuilder(
                valueListenable: controller.subtotalNotifier,
                builder: (context, value, _) {
                  return ItemWidget(
                    title: "Item total",
                    value: "R\$ $value",
                    styleTitle: AppTextStyles.subtitleMedium,
                    styleValue: AppTextStyles.subtitleMediumd14,
                  );
                },
              ),
              ItemWidget(
                title: "Tax",
                value: "R\$ ${controller.tax}",
                styleTitle: AppTextStyles.subtitleMedium,
                styleValue: AppTextStyles.subtitleMediumd14,
              ),
              ValueListenableBuilder(
                valueListenable: controller.totalNotifier,
                builder: (context, value, _) {
                  return ItemWidget(
                    title: "Total:",
                    value: "R\$ $value",
                    styleTitle: AppTextStyles.titleSemiBold,
                    styleValue: AppTextStyles.titleSemiBold,
                  );
                },
              ),
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
