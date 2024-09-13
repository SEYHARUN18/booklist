import 'package:book_list/data/repository/product/product.dart';
import 'package:book_list/data/repository/product/product_type.dart';
import 'package:book_list/di/di.dart';

mixin RepositoryModule on ClientModule {
  ProductRepositoryType get productRepository {
    return ProductRepository(apiClient: apiClient);
  }
}
