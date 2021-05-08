import 'package:flutter/material.dart';
import 'package:food_app/page_view/widgets/bottom_navig_bar.dart';
import 'package:food_app/screens/cart/cart_screen.dart';
import 'package:food_app/screens/home/home_screen.dart';
import 'package:food_app/screens/home/widgets/home_app_bar_widget.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        SafeArea(
          child: Scaffold(
            appBar: HomeAppBarWidget(),
            body: HomeScreen(),
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigBar(),
          ),
        ),
        SafeArea(
          child: Scaffold(
            appBar: AppBar(title: Text("Favoritos")),
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigBar(),
          ),
        ),
        SafeArea(
          child: Scaffold(
            body: CartScreen(),
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigBar(),
          ),
        ),
        SafeArea(
          child: Scaffold(
            appBar: AppBar(title: Text("Perfil")),
            backgroundColor: Colors.white,
            bottomNavigationBar: BottomNavigBar(),
          ),
        ),
      ],
    );
  }
}
