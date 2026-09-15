import 'package:book_store_app/core/utils/app_strings.dart';
import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsWidget extends StatelessWidget {
  const BookDetailsWidget({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 0.50.sw,
            height: 0.40.sh,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              image: DecorationImage(
                image: NetworkImage(bookModel.image!),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.h),
          child: Center(
            child: Text(bookModel.title!, style: StyleFonts.largeFont),
          ),
        ),
        Center(child: Text(bookModel.authors!, style: StyleFonts.mediumFont)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amberAccent, size: 15.sp),
            Text(AppStrings.rateText),
          ],
        ),
      ],
    );
  }
}
