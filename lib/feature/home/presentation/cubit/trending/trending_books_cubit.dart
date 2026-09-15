import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'trending_books_state.dart';

class TrendingBooksCubit extends Cubit<TrendingBooksState> {
  TrendingBooksCubit() : super(TrendingBooksInitial());
}
