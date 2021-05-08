import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/core/app_text_styles.dart';

class ButtonConfirmWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: MaterialButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.all(19),
          height: 35,
          color: AppColors.red,
          child: Text(
            'Confirmar Pagamento',
            style: AppTextStyles.subtitleWhite17,
          ),
          onPressed: () {}),
    );
  }
}
