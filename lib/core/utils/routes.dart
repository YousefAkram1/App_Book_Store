import 'package:book_store_app/feature/home/data/repo/home_repo_imp.dart';
import 'package:book_store_app/feature/home/presentation/cubit/best_sell_book_cubit/book_sell_cubit.dart';
import 'package:book_store_app/feature/home/presentation/cubit/book_details_cubit/book_details_cubit.dart';
import 'package:book_store_app/feature/home/presentation/cubit/new_books_cubit/book_new_cubit.dart';
import 'package:book_store_app/feature/home/presentation/views/book_details.dart';
import 'package:book_store_app/feature/home/presentation/views/home_view.dart';
import 'package:book_store_app/feature/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String homeView = '/home';

  static String detailsVeiw = '/details';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return SplashView();
        },
      ),

      GoRoute(
        path: homeView,
        builder: (context, state) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) {
                  return BookSellCubit(HomeRepoImp())..getBestSellBooks();
                },
              ),

              BlocProvider(
                create: (context) {
                  return NewBookCubit(HomeRepoImp())..getNewBooks();
                },
              ),
            ],
            child: const HomeView(),
          );
        },
      ),

      GoRoute(
        path: detailsVeiw,
        builder: (context, state) {
          final String id = state.extra as String;

          return BlocProvider(
            create: (context) {
              return BookDetailsCubit(HomeRepoImp());
            },
            child: BookDetails(id: id),
          );
        },
      ),
    ],
  );
}
