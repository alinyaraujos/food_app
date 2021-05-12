import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class CardCategoryWidget extends StatelessWidget {
  final String title;
  final String image;
  final bool selected;
  final Function onTap;

  const CardCategoryWidget({
    Key? key,
    required this.title,
    required this.image,
    required this.selected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: () => onTap(),
        child: Container(
          padding: EdgeInsets.all(16),
          height: 176,
          width: 95,
          decoration: BoxDecoration(
              color: this.selected ? AppColors.red : AppColors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
              boxShadow: [
                this.selected
                    ? BoxShadow()
                    : BoxShadow(
                        color: Colors.black45.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 5,
                        offset: Offset(1, 1))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Image.asset(this.image),
              ),
              Text(
                this.title,
                style: this.selected
                    ? AppTextStyles.titleMedium2
                    : AppTextStyles.titleMedium,
              ),
              Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                  color: this.selected ? Colors.white : Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: this.selected ? AppColors.darkRed : Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
