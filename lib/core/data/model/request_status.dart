
import 'package:meal_app/core/data/model/failure.dart';

class RequestStatus {
  ResponseStatus? responseStatus;
  Failure? failure;
  String? message;

  RequestStatus({this.responseStatus, this.failure, this.message});
}

enum ResponseStatus { initial, success, error, loading, empty, connectionError , refresh }
