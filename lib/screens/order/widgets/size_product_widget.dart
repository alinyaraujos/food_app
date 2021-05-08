import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class SizeProductWidget extends StatelessWidget {
  final String title;
  final bool selected;
  final Function onTap;

  const SizeProductWidget({
    Key? key,
    required this.title,
    this.selected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onTap(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 13),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: this.selected ? AppColors.red : Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black45.withOpacity(0.15),
                spreadRadius: 0,
                blurRadius: 15,
                offset: Offset(4, 4), // changes position of shadow
              )
            ]),
        height: 50,
        width: 50,
        child: Center(
            child: Text(
          this.title,
          style: this.selected
              ? AppTextStyles.letterSizeWhite
              : AppTextStyles.letterSizeBlack,
        )),
      ),
    );
  }
}
