import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/repo/home_repo.dart';
import 'package:book_store_app/feature/home/presentation/cubit/book_details_cubit/book_details_state.dart';

class BookDetailsCubit extends Cubit<BookDetailsStatue> {
  BookDetailsCubit(this.homeRepo) : super(BookDetailsLoadingState());
  HomeRepo homeRepo;
  Future<void> fetBookDetails({required String id}) async {
    emit(BookDetailsLoadingState());

    var result = await homeRepo.fetchOneBook(id: id);

    result.fold(
      (failure) {
        emit(BookDetailsFailureState(errorMessage: failure.errorMessage));
      },
      (book) {
        emit(BookDetailsSuccessState(book: book));
      },
    );
  }
}
