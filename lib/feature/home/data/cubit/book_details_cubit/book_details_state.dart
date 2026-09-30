import 'package:book_store_app/feature/home/data/model/book_model.dart';

class BookDetailsStatue {}

class BookDetailsSuccessState extends BookDetailsStatue {
  BookModel book;
  BookDetailsSuccessState({required this.book});
}

class BookDetailsLoadingState extends BookDetailsStatue {}

class BookDetailsFailureState extends BookDetailsStatue {
  final String errorMessage;
  BookDetailsFailureState({required this.errorMessage});
}
