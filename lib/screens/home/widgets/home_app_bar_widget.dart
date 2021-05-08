import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class HomeAppBarWidget extends PreferredSize {
  HomeAppBarWidget()
      : super(
          preferredSize: Size.fromHeight(100),
          child: Container(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: AppColors.darkRed,
                ),
                Text(
                  "R. São Franscisco",
                  style: AppTextStyles.titleMedium,
                ),
              ],
            ),
          ),
        );
}
