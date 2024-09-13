part of 'book_list_bloc.dart';

@freezed
class BookListState with _$BookListState {
  const factory BookListState.initial() = _Initial;
  const factory BookListState.loadInProgress() = _LoadInProgress;
  const factory BookListState.bookFailed() = _Failed;
  const factory BookListState.success({required List<ProductModel> data}) =
      Success;
}
