import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class CardProductWidget extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final double price;
  final VoidCallback? onTap;

  const CardProductWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.image,
      required this.price,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        height: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black45.withOpacity(0.05),
                spreadRadius: 0,
                blurRadius: 5,
                offset: Offset(1, 1), // changes position of shadow
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.red,
                ),
                child: Image.asset(this.image),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        this.title,
                        style: AppTextStyles.subtitleMediumd14,
                      ),
                    ),
                    Text(
                      "R\$ ${this.price}",
                      style: AppTextStyles.subtitleBold14,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  this.description,
                  style: AppTextStyles.subtitleMedium,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
