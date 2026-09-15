import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/repo/home_repo.dart';
import 'package:book_store_app/feature/home/presentation/cubit/new_books_cubit/book_new_state.dart';

class NewBookCubit extends Cubit<NewBookStatue> {
  NewBookCubit(this.homeRepo) : super(NewBookLoadingState());
  HomeRepo homeRepo;

  Future<void> getNewBooks() async {
    emit(NewBookLoadingState());

    var result = await homeRepo.fetchTrendingNowO();

    result.fold(
      (failure) {
        emit(NewBookFailureState(errorMessage: failure.errorMessage));
      },
      (book) {
        emit(NewBookSuccessState(books: book));
      },
    );
  }
}
