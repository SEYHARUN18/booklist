import 'package:book_list/data/api/api_client/api_client_type.dart';
import 'package:book_list/data/repository/product/product_type.dart';
import 'package:book_list/domain/model/product_model/product_model.dart';

class ProductRepository implements ProductRepositoryType {
  final APIClientType apiClient;
  const ProductRepository({required this.apiClient});
  @override
  Future<List<ProductModel>> getProDuctList() async {
    return apiClient.getProductList();
  }
}
