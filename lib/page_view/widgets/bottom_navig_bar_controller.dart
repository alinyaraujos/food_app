import 'package:flutter/material.dart';

class BottomNavigBarController {
  final tabSelectedNotifier = ValueNotifier<int>(0);
  int get tabSelected => tabSelectedNotifier.value;
  set tabSelected(int index) => tabSelectedNotifier.value = index;
}
