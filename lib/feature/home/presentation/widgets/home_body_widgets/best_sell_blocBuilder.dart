import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/core/widgets/list_view_scroll_shimmer.dart';
import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_cubit.dart';
import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_statues.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBlocBuilder extends StatelessWidget {
  const BestSellerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookSellCubit, BookStatue>(
      builder: (context, state) {
        if (state.bestSellerStatus == RequestStatus.loading) {
          return const ListViewScrollShimmer();
        }

        if (state.bestSellerStatus == RequestStatus.failure) {
          return Center(
            child: Text(
              state.bestSellerError ?? 'Something went wrong',
              style: StyleFonts.largeFont,
            ),
          );
        }

        if (state.bestSellerStatus == RequestStatus.success) {
          return ItemsListView(books: state.bestSellerBooks);
        }

        return const SizedBox();
      },
    );
  }
}
