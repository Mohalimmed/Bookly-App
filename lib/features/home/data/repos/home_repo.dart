import 'package:bookly/Features/home/data/models/book_model/book.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
 Future<Either<Failure ,List<Book>>> fetchNewestBooks();


 Future<Either<Failure ,List<Book>>>  fetchFeaturedBooks();
 Future<Either<Failure ,List<Book>>>  fetchSamelerBooks({required String category});
}