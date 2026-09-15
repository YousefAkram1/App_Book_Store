part of 'trending_books_cubit.dart';

sealed class TrendingBooksState extends Equatable {
  const TrendingBooksState();

  @override
  List<Object> get props => [];
}

final class TrendingBooksInitial extends TrendingBooksState {}
