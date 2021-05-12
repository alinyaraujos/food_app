import 'package:flutter/material.dart';
import 'package:food_app/core/app_colors.dart';
import 'package:food_app/page_view/pages_controller.dart';
import 'package:food_app/page_view/widgets/bottom_navig_bar_controller.dart';
import 'package:food_app/util/app_icons_icons.dart';
import 'package:provider/provider.dart';

class BottomNavigBar extends StatelessWidget {
  BottomNavigBarController bottomNavigBarController;
  BottomNavigBar({required this.bottomNavigBarController});

  PageController? pageController;

  void onItemTapped(int index) {
    pageController!.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    pageController = Provider.of<PagesController>(context).pageController;

    return ValueListenableBuilder(
      valueListenable: bottomNavigBarController.tabSelectedNotifier,
      builder: (context, int value, _) => BottomNavigationBar(
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
        currentIndex: value,
        type: BottomNavigationBarType.fixed,
        onTap: onItemTapped,
        elevation: 20,
      ),
    );
  }
}
