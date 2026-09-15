import 'package:book_store_app/core/widgets/book_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewScrollShimmer extends StatelessWidget {
  const ListViewScrollShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.35.sh,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: const BookScrollShimmer(),
          );
        },
      ),
    );
  }
}
