import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CostomBottomNavigationBar extends StatelessWidget {
  const CostomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: AppColors.unUsedIcons,
      selectedItemColor: AppColors.primaryColor,
      unselectedFontSize: 14,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.homeIcon,
            width: 23.95,
            height: 23.95,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.categoryIcon,
            width: 23.95,
            height: 23.95,
          ),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.bookMarkIcon,
            width: 23.95,
            height: 23.95,
          ),
          label: 'Saved',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AssetsPath.profileIcon,
            width: 23.95,
            height: 23.95,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
