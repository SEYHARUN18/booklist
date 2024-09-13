// ignore_for_file: non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'second_api_client_type.g.dart';

@RestApi()
abstract class SecondAPIClientType {
  factory SecondAPIClientType(Dio dio, {String baseUrl}) = _SecondAPIClientType;
//Second
  @GET('/health-check')
  Future<String> getHealthCheck();
}
