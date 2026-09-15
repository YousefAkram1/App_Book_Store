import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BookDetailsShimmer extends StatelessWidget {
  const BookDetailsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 0.50.sw,
              height: 0.40.sh,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.white,
              ),
            ),

            SizedBox(height: 8.h),

            Container(width: 140.w, height: 12.h, color: Colors.white),

            SizedBox(height: 8.h),

            Container(width: 120.w, height: 9.h, color: Colors.white),

            SizedBox(height: 5.h),

            Container(width: 50.w, height: 8.h, color: Colors.white),

            SizedBox(height: 16.h),

            Align(
              alignment: Alignment.centerLeft,
              child: Container(width: 120.w, height: 20.h, color: Colors.white),
            ),

            SizedBox(height: 5.h),

            Container(
              width: double.infinity,
              height: 90.h,
              color: Colors.white,
            ),

            SizedBox(height: 8.h),

            Align(
              alignment: Alignment.centerLeft,
              child: Container(width: 120.w, height: 20.h, color: Colors.white),
            ),

            SizedBox(height: 5.h),

            Container(
              width: double.infinity,
              height: 90.h,
              color: Colors.white,
            ),

            SizedBox(height: 24.h),

            Container(
              width: double.infinity,
              height: 58.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
