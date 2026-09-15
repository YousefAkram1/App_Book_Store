// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _ar = {
  "bookStore": "متجر الكتب",
  "splashTextTitle": "اقرأ كتابك\nالمفضل\nمن هنا.",
  "splashTextSubtitle": "هذا نص تجريبي يُستخدم لعرض شكل النص\nوتنسيقه داخل التطبيق.",
  "splashButtonText": "ابدأ الآن",
  "aboutTheAuther": "عن المؤلف",
  "overView": "نظرة عامة",
  "bookDetailsButton": "عرض الكتاب",
  "rateText": "4.5",
  "home": "الرئيسية",
  "explore": "استكشف",
  "profile": "الملف الشخصي",
  "saved": "المحفوظات",
  "bestSellingBooks": "الكتب الأكثر مبيعًا",
  "trendingNow": "الأكثر رواجًا",
  "price": "السعر"
};
static const Map<String,dynamic> _en = {
  "bookStore": "Book Store",
  "splashTextTitle": "Read your\nfavourite book\nfrom here.",
  "splashTextSubtitle": "Lorem Ipsum is simply dummy text of the\nprinting and typesetting industry.",
  "splashButtonText": "Get Started",
  "aboutTheAuther": "About the author",
  "overView": "Overview",
  "bookDetailsButton": "Show the book",
  "rateText": "4.5",
  "home": "Home",
  "explore": "Explore",
  "profile": "Profile",
  "saved": "Saved",
  "bestSellingBooks": "Best selling books",
  "trendingNow": "Trending Now",
  "price": "Price"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": _ar, "en": _en};
}
