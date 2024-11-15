import 'package:bookly/Features/Splash/views/splash_view.dart';
import 'package:bookly/core/utils/service_locater.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const rHomeView = '/homeView';
  static const rBookDetailsView = '/BookDetailsView';
  static const rSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
   //    GoRoute(
   //      path: rHomeView,
   //      builder: (context, state) => const HomeView(),
   //    ),
   //    GoRoute(
   //      path: rBookDetailsView,
   //      builder: (context, state) => BlocProvider(
   //        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
   //        child:  BookDetailsView(
   //          book: state.extra as Book,
   //        ),
   // ),
   //    ),
   //    GoRoute(
   //      path: rSearchView,
   //      builder: (context, state) => const SearchView(),
   //    ),
    ],
  );
}