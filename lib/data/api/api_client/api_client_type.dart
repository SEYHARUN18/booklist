// ignore_for_file: non_constant_identifier_names

import 'package:book_list/domain/model/product_model/product_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client_type.g.dart';

@RestApi()
abstract class APIClientType {
  factory APIClientType(Dio dio, {String baseUrl}) = _APIClientType;
  @GET('/health-check')
  Future<String> getHealthCheck();

  @GET('/products?limit=10')
  Future<List<ProductModel>> getProductList();

  // uploadImage
  // @POST('/uploadImage')
  // @MultiPart()
  // Future<UploadImageResponse> uploadImage(
  //   @Part(name: 'name') String name,
  //   @Part(name: 'text') String text,
  //   @Part(name: 'file') File newFile,
  // );
}
