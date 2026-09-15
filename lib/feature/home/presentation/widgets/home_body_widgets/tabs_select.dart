import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/core/widgets/list_view_scroll_shimmer.dart';
import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_cubit.dart';
import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_statues.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/items_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabSelectItem extends StatefulWidget {
  const TabSelectItem({super.key});

  @override
  State<TabSelectItem> createState() => _TabSelectItemState();
}

class _TabSelectItemState extends State<TabSelectItem> {
  String selectedCategory = '';

  final List<String> categories = ['History', 'Horror', 'Humor'];
  @override
  void initState() {
    super.initState();
    BlocProvider.of<BookSellCubit>(
      context,
    ).getBookCategoryItems(topic: categories.first);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          spacing: 10,
          children: categories.map((category) {
            final isSelected = selectedCategory == category;

            return Column(
              children: [
                ChoiceChip(
                  showCheckmark: false,
                  selectedColor: AppColors.primaryColor,

                  selected: isSelected,

                  onSelected: (value) {
                    setState(() {
                      selectedCategory = category;
                    });
                    context.read<BookSellCubit>().getBookCategoryItems(
                      topic: selectedCategory,
                    );
                  },

                  label: Text(
                    category,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  ),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                SizedBox(height: 12),
              ],
            );
          }).toList(),
        ),
        BlocBuilder<BookSellCubit, BookStatue>(
          builder: (context, state) {
            if (state.categoryStatus == RequestStatus.loading) {
              return const ListViewScrollShimmer();
            }

            if (state.categoryStatus == RequestStatus.failure) {
              return Center(
                child: Text(
                  state.categoryError ?? 'Something went wrong',
                  style: StyleFonts.largeFont,
                ),
              );
            }

            if (state.categoryStatus == RequestStatus.success) {
              return ItemsListView(books: state.categoryBooks);
            }

            return const SizedBox();
          },
        ),
      ],
    );
  }
}
