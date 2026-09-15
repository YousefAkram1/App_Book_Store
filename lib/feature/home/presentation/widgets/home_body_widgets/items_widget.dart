import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/core/utils/app_strings.dart';
import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/core/utils/routes.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DefaulteItemWidget extends StatelessWidget {
  const DefaulteItemWidget({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => GoRouter.of(
            context,
          ).push(AppRoutes.detailsVeiw, extra: bookModel.id),
          child: Container(
            width: 0.33.sw,
            height: 0.24.sh,
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
          child: Text(
            bookModel.title!.substring(0, 9),
            style: StyleFonts.largeFont,
          ),
        ),
        Text(
          bookModel.authors!.substring(0, 8),
          style: StyleFonts.mediumFont,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        SizedBox(
          width: 0.27.sw,
          child: Row(
            children: [
              Text(
                AppStrings.price,
                style: TextStyle(color: AppColors.priceColor),
              ),
              const Spacer(flex: 1),
              Icon(Icons.star, color: Colors.amberAccent, size: 15.sp),
              Text(AppStrings.rateText),
            ],
          ),
        ),
      ],
    );
  }
}
