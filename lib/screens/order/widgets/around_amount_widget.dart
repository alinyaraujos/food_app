import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';

class AroundAmountWidget extends StatelessWidget {
  final IconData icon;
  final Function onTap;

  const AroundAmountWidget({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => this.onTap(),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            color: AppColors.pink,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        child: Center(
          child: Icon(this.icon),
        ),
      ),
    );
  }
}
