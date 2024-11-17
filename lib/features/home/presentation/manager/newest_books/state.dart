import 'package:bookly/Features/home/data/models/book_model/book.dart';
import 'package:equatable/equatable.dart';

abstract class NewestBooksStates extends Equatable {

  const NewestBooksStates();
  @override
  List<Object> get props => [];
}

class NewestBooksInitial extends NewestBooksStates{}
class NewestBooksLoading extends NewestBooksStates{}
class NewestBooksFailure extends NewestBooksStates{

  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}
class NewestBooksSuccess extends NewestBooksStates{

  final List<Book> books;

  const NewestBooksSuccess(this.books);
}
