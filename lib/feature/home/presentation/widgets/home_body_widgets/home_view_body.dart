import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/best_sell_blocBuilder.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/tabs_select.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/trend_now_blocBuilder.dart';
import 'package:book_store_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 16),
      child: ListView(
        children: [
          const TabSelectItem(),

          const SizedBox(height: 32),

          Text(LocaleKeys.bestSellingBooks.tr(), style: StyleFonts.largeFont),

          const SizedBox(height: 32),

          const BestSellerBlocBuilder(),

          const SizedBox(height: 32),

          Text(LocaleKeys.trendingNow.tr(), style: StyleFonts.largeFont),

          const SizedBox(height: 32),

          const TrendNowBlocBuilder(),
        ],
      ),
    );
  }
}
