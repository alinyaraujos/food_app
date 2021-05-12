import 'package:flutter/material.dart';

class HomeController {
  final selectedCategoryNotifier = ValueNotifier<int>(0);
  int get selectedCategory => selectedCategoryNotifier.value;
  set selectedCategory(int index) => selectedCategoryNotifier.value = index;
}
