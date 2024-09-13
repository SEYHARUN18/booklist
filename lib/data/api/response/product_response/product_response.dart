import 'package:book_list/domain/model/product_model/product_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @Default([]) List<ProductModel> data,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json['data'] as Map<String, dynamic>);
}
