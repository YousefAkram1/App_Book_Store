import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/core/utils/assets.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/custom_bottom_navigation_bar.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/home_view_body.dart';
import 'package:book_store_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(LocaleKeys.bookStore.tr()),

        actions: [
          IconButton(
            onPressed: () {
              if (context.locale == Locale('en')) {
                context.setLocale(Locale('ar'));
              } else {
                context.setLocale(Locale('en'));
              }
            },
            icon: SvgPicture.asset(
              AssetsPath.searchIcon,
              width: 20.31.w,
              height: 20.31.h,
              colorFilter: ColorFilter.mode(
                AppColors.secondaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: HomeViewBody(),
      bottomNavigationBar: CostomBottomNavigationBar(),
    );
  }
}
