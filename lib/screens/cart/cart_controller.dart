import 'package:flutter/material.dart';
import 'package:food_app/core/app_image.dart';
import 'package:food_app/models/product.dart';

class CartController {
  CartController() {
    addQuantity(qtd: 1); //primeiro produto
    addQuantity(qtd: 2); // segundo produto
    sumAll();
  }

  void sumAll() {
    double s = 0;
    for (int i = 0; i < this.products.length; i++) {
      s += this.products[i].price * this.quantityAt(index: i);
    }

    this.subtotal = s;
    this.total = this.subtotal;
  }

  final listProductsNotifier = ValueNotifier<List<Product>>([
    Product(
      name: "Pizza 4 queijos",
      description: "Pizza Grande sabor 4 queijos",
      price: 48.9,
      imageUrl: AppImage.pizza,
    ),
    Product(
      name: "Bolo Chocolate",
      description: "Bolo ",
      price: 50.9,
      imageUrl: AppImage.cake,
    ),
  ]);

  List<Product> get products => listProductsNotifier.value;

  void addProduct({required Product product, int quantity = 1}) {
    products.add(product);
    addQuantity(qtd: quantity);
  }

  void removeProduct({required int index}) {
    products.removeAt(index);
    removeQuantity(index: index);
  }

  // quantidades:
  final quantitiesNotifier = <ValueNotifier<int>>[
    // ValueNotifier<int>(1),
    // ValueNotifier<int>(2),
  ];

  void addQuantity({required qtd}) {
    final vn = ValueNotifier<int>(qtd);

    vn.addListener(sumAll);

    quantitiesNotifier.add(vn);
  }

  int quantityAt({required index}) => quantitiesNotifier[index].value;

  void setQuantityAt({required int index, required int newQtd}) {
    quantitiesNotifier[index].value = newQtd;
  }

  void removeQuantity({required index}) => quantitiesNotifier.removeAt(index);

  // totais
  final subtotalNotifier = ValueNotifier<double>(0.0);
  double get subtotal => subtotalNotifier.value;
  set subtotal(double newSubtotal) {
    this.subtotalNotifier.value = newSubtotal;
  }

  double tax = 0.25;

  final totalNotifier = ValueNotifier<double>(0.0);
  double get total => totalNotifier.value;
  set total(double t) {
    this.totalNotifier.value = t + tax;
  }
}
