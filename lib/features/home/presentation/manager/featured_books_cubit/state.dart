import 'package:bookly/Features/home/data/models/book_model/book.dart';
import 'package:equatable/equatable.dart';

abstract class FeaturedBooksStates extends Equatable {

  const FeaturedBooksStates();
  @override
  List<Object> get props => [];
}

class FeaturedBooksInitial extends FeaturedBooksStates{}
class FeaturedBooksLoading extends FeaturedBooksStates{}
class FeaturedBooksFailure extends FeaturedBooksStates{

  final String errMessage;

  const FeaturedBooksFailure(this.errMessage);
}
class FeaturedBooksSuccess extends FeaturedBooksStates{

  final List<Book> books;

  const FeaturedBooksSuccess(this.books);
}
