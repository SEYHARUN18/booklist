import 'package:book_list/domain/model/product_model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class BookDetail extends HookWidget {
  const BookDetail({super.key, required this.productModel});
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
