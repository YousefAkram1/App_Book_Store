import 'package:book_store_app/core/errors/failure.dart';
import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBokes();
  Future<Either<Failure, List<BookModel>>> fetchBooksCategoryItems({
    required String item,
  });

  Future<Either<Failure, List<BookModel>>> fetchTrendingNowO();
  Future<Either<Failure, BookModel>> fetchOneBook({required String id});
}
