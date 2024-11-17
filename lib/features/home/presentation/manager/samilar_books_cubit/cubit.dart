import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksStates> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async{
    emit(SimilarBooksLoading());

    var result = await homeRepo.fetchSamelerBooks(category: category);

    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errorMessage));

    } , (books) {
      emit(SimilarBooksSuccess(books));
    });
  }

}
