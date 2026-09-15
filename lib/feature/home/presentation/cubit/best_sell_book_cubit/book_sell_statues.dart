import 'package:book_store_app/feature/home/data/model/book_model.dart';
import 'package:equatable/equatable.dart';

enum RequestStatus { initial, loading, success, failure }

class BookStatue extends Equatable {
  final List<BookModel> bestSellerBooks;
  final List<BookModel> categoryBooks;

  final RequestStatus bestSellerStatus;
  final RequestStatus categoryStatus;

  final String? bestSellerError;
  final String? categoryError;

  const BookStatue({
    this.bestSellerBooks = const [],
    this.categoryBooks = const [],
    this.bestSellerStatus = RequestStatus.initial,
    this.categoryStatus = RequestStatus.initial,
    this.bestSellerError,
    this.categoryError,
  });

  BookStatue copyWith({
    List<BookModel>? bestSellerBooks,
    List<BookModel>? categoryBooks,
    RequestStatus? bestSellerStatus,
    RequestStatus? categoryStatus,
    String? bestSellerError,
    String? categoryError,
  }) {
    return BookStatue(
      bestSellerBooks: bestSellerBooks ?? this.bestSellerBooks,
      categoryBooks: categoryBooks ?? this.categoryBooks,
      bestSellerStatus: bestSellerStatus ?? this.bestSellerStatus,
      categoryStatus: categoryStatus ?? this.categoryStatus,
      bestSellerError: bestSellerError ?? this.bestSellerError,
      categoryError: categoryError ?? this.categoryError,
    );
  }

  @override
  List<Object?> get props => [
    bestSellerBooks,
    categoryBooks,
    bestSellerStatus,
    categoryStatus,
    bestSellerError,
    categoryError,
  ];
}
