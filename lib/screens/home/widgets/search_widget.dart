import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.grey,
            ),
            hintText: "Pesquise nossos produtos",
            hintStyle: TextStyle(
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
