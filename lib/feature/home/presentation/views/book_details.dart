import 'package:book_store_app/core/utils/app_colors.dart';
import 'package:book_store_app/core/utils/font_style.dart';
import 'package:book_store_app/core/widgets/book_details_shimmer.dart';
import 'package:book_store_app/feature/home/presentation/cubit/book_details_cubit/book_details_cubit.dart';
import 'package:book_store_app/feature/home/presentation/cubit/book_details_cubit/book_details_state.dart';
import 'package:book_store_app/feature/home/presentation/widgets/book_details_widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({super.key, required this.id});
  final String id;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  void initState() {
    BlocProvider.of<BookDetailsCubit>(context).fetBookDetails(id: widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_sharp, color: AppColors.primaryColor),
          ),
        ],
      ),

      body: BlocBuilder<BookDetailsCubit, BookDetailsStatue>(
        builder: (context, state) {
          if (state is BookDetailsSuccessState) {
            return BookDetailsBody(bookModel: state.book);
          } else if (state is BookDetailsFailureState) {
            return Center(
              child: Text(state.errorMessage, style: StyleFonts.largeFont),
            );
          } else {
            return BookDetailsShimmer();
          }
        },
      ),
    );
  }
}
