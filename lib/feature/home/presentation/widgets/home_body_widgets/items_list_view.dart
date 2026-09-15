import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:book_store_app/feature/home/presentation/widgets/home_body_widgets/items_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemsListView extends StatefulWidget {
  const ItemsListView({super.key, required this.books});
  final List<BookModel> books;

  @override
  State<ItemsListView> createState() => _ItemsListViewState();
}

class _ItemsListViewState extends State<ItemsListView> {
  ScrollController controller = ScrollController();
  bool _isLoading = false;
  @override
  void initState() {
    controller.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_isLoading) return;
    final pixels = controller.position.pixels;
    final max = controller.position.maxScrollExtent;
    final trigerDistnce = 200;
    if (pixels >= max - trigerDistnce) {
      print('read more data');
      _loadMoreData();
    }
  }

  void _loadMoreData() {
    setState(() {
      _isLoading = true;
    });

    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _isLoading = false;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    controller.removeListener(_onScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.35.sh,
      child: ListView.builder(
        controller: controller,
        itemCount: widget.books.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 8.w),
            child: DefaulteItemWidget(bookModel: widget.books[index]),
          );
        },
      ),
    );
  }
}
