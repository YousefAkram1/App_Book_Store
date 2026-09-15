import 'package:book_store_app/feature/home/data/model/book_model.dart';

class NewBookStatue {}

class NewBookSuccessState extends NewBookStatue {
  List<BookModel> books;
  NewBookSuccessState({required this.books});
}

class NewBookLoadingState extends NewBookStatue {}

class NewBookFailureState extends NewBookStatue {
  final String errorMessage;
  NewBookFailureState({required this.errorMessage});
}
