import 'package:book_list/data/api/response/product_response/product_response.dart';

abstract class ProductRepositoryType {
  Future<ProductResponse> getProDuctList();
}
