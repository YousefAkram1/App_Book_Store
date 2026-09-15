import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:book_store_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';

class MoreInformaitionOfTheBookWidget extends StatelessWidget {
  const MoreInformaitionOfTheBookWidget({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text(LocaleKeys.aboutTheAuther.tr(), style: StyleFonts.largeFont),
        Text(bookModel.description!),
        SizedBox(height: 8),
        Text(LocaleKeys.overView.tr(), style: StyleFonts.largeFont),
        Text(bookModel.subtitle!),
        SizedBox(height: 24),
      ],
    );
  }
}
