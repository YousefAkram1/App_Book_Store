import 'package:book_store_app/core/widgets/button_widget.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:book_store_app/feature/home/presentation/widgets/book_details_widgets/book_details_widgets.dart';
import 'package:book_store_app/feature/home/presentation/widgets/book_details_widgets/book_more_info_widget.dart';
import 'package:book_store_app/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BookDetailsWidget(bookModel: bookModel),
          MoreInformaitionOfTheBookWidget(bookModel: bookModel),
          ButtonStyleWidget(
            bookModel: bookModel,
            onPress: launchUrlMethod,
            buttonName: LocaleKeys.bookDetailsButton.tr(),
          ),
        ],
      ),
    );
  }

  void launchUrlMethod() async {
    final url = Uri.parse(bookModel.url!);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    }
  }
}
