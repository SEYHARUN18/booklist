// ignore_for_file: library_private_types_in_public_api

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:book_list/data/repository/product/product_type.dart';
import 'package:book_list/my_app.dart';
import 'package:book_list/utils/network_error_handler.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/product_model/product_model.dart';

part 'book_list_state.dart';
part 'book_list_event.dart';
part 'book_list_bloc.freezed.dart';

class BookListBloc extends Bloc<BookListEvent, BookListState> {
  final ProductRepositoryType type;
  BookListBloc({required this.type}) : super(const BookListState.initial()) {
    on<_BookList>(onGetProductRequest);
  }
  Future<void> onGetProductRequest(
    _BookList event,
    Emitter<BookListState> emit,
  ) async {
    try {
      final repsonse = await type.getProDuctList();
      emit(BookListState.success(data: repsonse));
    } on DioException catch (e) {
      log(e.toString());
      final NetworkErrorHandler networkErrorHandler = NetworkErrorHandler(e);
      globalSnackBarSubject
          .add({'message': networkErrorHandler.exec().description});
      emit(const BookListState.bookFailed());
    } catch (e) {
      globalSnackBarSubject.add({'message': e.toString()});
      emit(const BookListState.bookFailed());
    }
  }
}
