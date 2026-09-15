import 'package:bloc/bloc.dart';
import 'package:book_store_app/feature/home/data/repo/home_repo.dart';
import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_statues.dart';

class BookSellCubit extends Cubit<BookStatue> {
  BookSellCubit(this.homeRepo) : super(const BookStatue());

  final HomeRepo homeRepo;

  Future<void> getBestSellBooks() async {
    emit(
      state.copyWith(
        bestSellerStatus: RequestStatus.loading,
        bestSellerError: null,
      ),
    );

    final result = await homeRepo.fetchBestSellerBokes();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            bestSellerStatus: RequestStatus.failure,
            bestSellerError: failure.errorMessage,
          ),
        );
      },
      (books) {
        emit(
          state.copyWith(
            bestSellerStatus: RequestStatus.success,
            bestSellerBooks: books,
          ),
        );
      },
    );
  }

  Future<void> getBookCategoryItems({required String topic}) async {
    emit(
      state.copyWith(
        categoryStatus: RequestStatus.loading,
        categoryError: null,
      ),
    );

    final result = await homeRepo.fetchBooksCategoryItems(item: topic);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            categoryStatus: RequestStatus.failure,
            categoryError: failure.errorMessage,
          ),
        );
      },
      (books) {
        emit(
          state.copyWith(
            categoryStatus: RequestStatus.success,
            categoryBooks: books,
          ),
        );
      },
    );
  }
}
