import 'package:bookly/Features/home/data/models/book_model/book.dart';
import 'package:equatable/equatable.dart';

abstract class SimilarBooksStates extends Equatable {

  const SimilarBooksStates();
  @override
  List<Object> get props => [];
}

class SimilarBooksInitial extends SimilarBooksStates{}
class SimilarBooksLoading extends SimilarBooksStates{}
class SimilarBooksFailure extends SimilarBooksStates{

  final String errMessage;

  const SimilarBooksFailure(this.errMessage);
}
class SimilarBooksSuccess extends SimilarBooksStates{

  final List<Book> books;

  const SimilarBooksSuccess(this.books);
}
