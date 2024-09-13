import 'package:book_list/data/api/api_client/api_client_type.dart';
import 'package:book_list/data/api/response/product_response/product_response.dart';
import 'package:book_list/data/repository/product/product_type.dart';

class ProductRepository implements ProductRepositoryType {
  final APIClientType apiClient;
  const ProductRepository({required this.apiClient});
  @override
  @override
  Future<ProductResponse> getProDuctList() async {
    return apiClient.getProductList();
  }
}
