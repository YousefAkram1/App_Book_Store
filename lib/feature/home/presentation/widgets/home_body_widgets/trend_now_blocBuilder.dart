import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/core/widgets/list_view_scroll_shimmer.dart';
import 'package:book_store_app/feature/home/presentation/cubit/new_books_cubit/book_new_cubit.dart';
import 'package:book_store_app/feature/home/presentation/cubit/new_books_cubit/book_new_state.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/items_list_view.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrendNowBlocBuilder extends StatelessWidget {
  const TrendNowBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewBookCubit, NewBookStatue>(
      builder: (context, state) {
        if (state is NewBookSuccessState) {
          return ItemsListView(books: state.books);
        } else if (state is NewBookFailureState) {
          return Center(
            child: Text(state.errorMessage, style: StyleFonts.largeFont),
          );
        } else {
          return ListViewScrollShimmer();
        }
      },
    );
  }
}
