import 'package:book_store_app/core/errors/error_handling.dart';
import 'package:book_store_app/core/errors/failure.dart';
import 'package:book_store_app/core/utils/generic_api.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:book_store_app/feature/home/data/repo/book_paths.dart';
import 'package:book_store_app/feature/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImp implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBokes() async {
    try {
      dynamic data = await Api().get(path: BookPaths.books);

      List<BookModel> books = [];

      for (var book in data['books']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, BookModel>> fetchOneBook({required String id}) async {
    try {
      dynamic data = await Api().get(path: BookPaths.bookDetails(id: id));

      var book = BookModel.fromJson(data);
      return Right(book);
    } catch (e) {
      return left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchTrendingNowO() async {
    try {
      dynamic data = await Api().get(path: 'recent');
      List<BookModel> books = [];
      for (var book in data['books']) {
        books.add(BookModel.fromJson(book));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksCategoryItems({
    required String item,
  }) async {
    try {
      dynamic data = await Api().get(path: BookPaths.searchBooks(topic: item));

      List<BookModel> books = [];

      for (var book in data['books']) {
        books.add(BookModel.fromJson(book));
      }

      return right(books);
    } catch (e) {
      return left(ServerFailure(errorMessage: ErrorHandling.handle(e).message));
    }
  }
}
