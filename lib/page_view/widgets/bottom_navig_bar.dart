import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/util/app_icons_icons.dart';

class BottomNavigBar extends StatefulWidget {
  @override
  _BottomNavigBarState createState() => _BottomNavigBarState();
}

class _BottomNavigBarState extends State<BottomNavigBar> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: "Home",
          backgroundColor: AppColors.lightGrey,
        ),
        BottomNavigationBarItem(
          icon: Icon(AppIcons.like_outline),
          label: "Favoritos",
          backgroundColor: AppColors.lightGrey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "Carrinho",
          backgroundColor: AppColors.lightGrey,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: "Perfil",
          backgroundColor: AppColors.lightGrey,
        ),
      ],
      selectedItemColor: AppColors.red,
      unselectedItemColor: AppColors.grey,
      showUnselectedLabels: true,
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      onTap: onItemTapped,
      elevation: 20,
    );
  }
}
