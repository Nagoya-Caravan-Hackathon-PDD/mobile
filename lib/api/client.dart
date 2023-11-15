import 'package:openapi/openapi.dart';

class ApiClient extends Openapi {
  static final ApiClient _instance = ApiClient._internal();

  factory ApiClient() {
    return _instance;
  }

  ApiClient._internal() : super();
}
