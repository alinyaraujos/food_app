import 'package:flutter/material.dart';

enum Sizes { P, M, G }

class OrderController {
  final sizeNotifier = ValueNotifier<Sizes>(Sizes.P);
  Sizes get size => sizeNotifier.value;
  set size(Sizes s) => sizeNotifier.value = s;

  final quantityNotifier = ValueNotifier<int>(1);
  int get quantity => quantityNotifier.value;
  set quantity(int q) => quantityNotifier.value = q;
}
