import 'package:flutter/material.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/core/app_text_styles.dart';
import 'package:food_app/screens/home/widgets/card_category_widget.dart';
import 'package:food_app/screens/home/widgets/card_product_widget.dart';
import 'package:food_app/screens/home/widgets/search_widget.dart';
import 'package:food_app/screens/order/order_screen.dart';

class HomeScreen extends StatelessWidget {
  final categoryList = [
    {
      "title": "Burgers",
      "image": AppImage.beefBurger,
    },
    {
      "title": "Bolos",
      "image": AppImage.cake,
    },
    {
      "title": "Pizza",
      "image": AppImage.pizza,
    },
    {
      "title": "Burgers",
      "image": AppImage.beefBurger,
    },
    {
      "title": "Bolos",
      "image": AppImage.cake,
    },
    {
      "title": "Pizza",
      "image": AppImage.pizza,
    },
  ];

  final productlist = {
    "burgers": [
      {
        "name": "Burgers",
        "price": 3.4,
        "description":
            "A signature flame-grilled chicken patty topped with smoked beef",
        "imageUrl": AppImage.beefBurger,
      },
      {
        "name": "Burgers",
        "price": 3.4,
        "description":
            "A signature flame-grilled chicken patty topped with smoked beef",
        "imageUrl": AppImage.beefBurger,
      },
      {
        "name": "Burgers",
        "price": 3.4,
        "description":
            "A signature flame-grilled chicken patty topped with smoked beef",
        "imageUrl": AppImage.beefBurger,
      }
    ],
    "pizza": [
      {
        "name": "Pizza G Portuguesa",
        "price": 60,
        "description":
            "A signature flame-grilled chicken patty topped with smoked beef",
        "imageUrl": AppImage.pizza,
      },
    ],
    "bolos": [
      {
        "name": "Bolo de chocolate",
        "price": 45,
        "description":
            "A signature flame-grilled chicken patty topped with smoked beef",
        "imageUrl": AppImage.cake,
      }
    ],
  };

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Olá",
              style: AppTextStyles.title,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Vamos fazer seu pedido",
              style: AppTextStyles.heading,
            ),
          ),
          SearchWidget(),
          Container(
            height: 176,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 8),
              scrollDirection: Axis.horizontal,
              itemCount: categoryList.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(
                    left: index == 0 ? 20 : 0,
                  ),
                  child: CardCategoryWidget(
                    title: categoryList[index]["title"].toString(),
                    image: categoryList[index]["image"].toString(),
                    selected: index == 0 ? true : false,
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: AppTextStyles.titleSemiBold,
                ),
                Text(
                  "Ver Todos >",
                  style: AppTextStyles.titleMedium3,
                )
              ],
            ),
          ),
          SizedBox(
            height: 28,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            itemCount: productlist["burgers"]!.length,
            itemBuilder: (context, index) {
              var product = productlist["burgers"]![index];
              return CardProductWidget(
                title: product["name"].toString(),
                description: product["description"].toString(),
                image: product["imageUrl"].toString(),
                price: double.parse(product["price"].toString()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OrderScreen(),
                    ),
                  );
                },
              );
            },
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
