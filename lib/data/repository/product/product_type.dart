import 'package:book_list/domain/model/product_model/product_model.dart';

abstract class ProductRepositoryType {
  Future<List<ProductModel>> getProDuctList();
}
