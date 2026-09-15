import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CostomBottomNavigationBar extends StatelessWidget {
  const CostomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.grey,
      selectedItemColor: AppColors.primaryColor,
      unselectedFontSize: 14,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: LocaleKeys.home.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view_rounded),
          label: LocaleKeys.explore.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_outlined),
          label: LocaleKeys.saved.tr(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: LocaleKeys.profile.tr(),
        ),
      ],
    );
  }
}
