// import 'package:bloc/bloc.dart';
// import 'package:book_store_app/feature/home/data/repo/home_repo.dart';
// import 'package:book_store_app/feature/home/presentation/cubit/get_category_book/get_category_book_state.dart';

// class GetCategoryBookCubit extends Cubit<GetCategoryBookState> {
//   GetCategoryBookCubit(this.homeRepo) : super(GetBookLoadingState());

//   final HomeRepo homeRepo;

//   Future<void> getBookCategoryItems({required String topic}) async {
//     emit(GetBookLoadingState());
//     final result = await homeRepo.fetchBooksCategoryItems(item: topic);
//     result.fold(
//       (failure) {
//         emit(GetBookFailureState(errorMessage: failure.errorMessage));
//       },
//       (books) {
//         emit(GetBookSuccessState(books: books));
//       },
//     );
//   }
// }
