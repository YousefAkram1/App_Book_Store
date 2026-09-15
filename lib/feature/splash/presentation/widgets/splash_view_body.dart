import 'package:book_store_app/core/utils/assets.dart';
import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/core/utils/routes.dart';
import 'package:book_store_app/core/widgets/button_widget.dart';
import 'package:book_store_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Image.asset(AssetsPath.logo, height: 292, width: 324),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              LocaleKeys.splashTextTitle.tr(),
              style: StyleFonts.largFont36.copyWith(color: Colors.white),
            ),
          ),
          Text(
            LocaleKeys.splashTextSubtitle.tr(),
            style: StyleFonts.mediumFont.copyWith(color: Colors.white),
          ),
          SizedBox(height: 32),
          ButtonStyleWidget(
            buttonName: LocaleKeys.splashButtonText.tr(),
            onPress: () => GoRouter.of(context).push(AppRoutes.homeView),
          ),
        ],
      ),
    );
  }
}
