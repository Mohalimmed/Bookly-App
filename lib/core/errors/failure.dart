
import 'package:dio/dio.dart';


abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api Server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Api Server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Received timeout with Api Server');
      case DioExceptionType.badCertificate:
      // Handle bad certificate if needed
        return ServerFailure('Bad certificate from the server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api Server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No Internet Connection');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('Server Failure');
        }
        return ServerFailure('Unexpected Error, Please try again later!');
      default:
        return ServerFailure('Oops, there was an error. Please try again later!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error, please try again later!');
    } else if(statusCode == 429){

      return ServerFailure('Request could not be processed because too many requests have been sent in a given time. ');
    }
    else {
      return ServerFailure('Oops, there was an error, Please try again later!');
    }
  }
}
