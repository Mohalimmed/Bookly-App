import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

final HomeRepo homeRepo;

Future<void> fetchFeaturedBooks() async{
  emit(FeaturedBooksLoading());

  var result = await homeRepo.fetchFeaturedBooks();

  result.fold((failure) {
    emit(FeaturedBooksFailure(failure.errorMessage));

  } , (books) {
    emit(FeaturedBooksSuccess(books));
  });
}
}
