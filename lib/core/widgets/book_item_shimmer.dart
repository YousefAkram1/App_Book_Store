import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class BookScrollShimmer extends StatelessWidget {
  const BookScrollShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 0.33.sw,
            height: 0.25.sh,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8.h),

          Container(width: 100.w, height: 12.h, color: Colors.white),

          SizedBox(height: 8.h),

          Container(width: 80.w, height: 11.h, color: Colors.white),

          SizedBox(height: 8.h),

          SizedBox(
            width: 0.25.sw,
            child: Row(
              children: [
                Container(width: 50.w, height: 10.h, color: Colors.white),
                const Spacer(),
                Container(width: 35.w, height: 10.h, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
