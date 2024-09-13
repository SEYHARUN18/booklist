// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:auto_route/empty_router_widgets.dart' as _i1;
import 'package:flutter/material.dart' as _i5;

import '../domain/model/product_model/product_model.dart' as _i6;
import '../presentation/book_detail.dart' as _i2;
import '../presentation/book_list.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthRouter.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.EmptyRouterPage(),
      );
    },
    BookDetailPage.name: (routeData) {
      final args = routeData.argsAs<BookDetailPageArgs>();
      return _i4.CustomPage<dynamic>(
        routeData: routeData,
        child: _i2.BookDetail(
          key: args.key,
          productModel: args.productModel,
        ),
        transitionsBuilder: _i4.TransitionsBuilders.slideBottom,
        opaque: true,
        barrierDismissible: false,
      );
    },
    BookListPage.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.BookList(),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          AuthRouter.name,
          path: '/',
          children: [
            _i4.RouteConfig(
              BookListPage.name,
              path: '',
              parent: AuthRouter.name,
            )
          ],
        ),
        _i4.RouteConfig(
          BookDetailPage.name,
          path: '/book-detail',
        ),
      ];
}

/// generated route for
/// [_i1.EmptyRouterPage]
class AuthRouter extends _i4.PageRouteInfo<void> {
  const AuthRouter({List<_i4.PageRouteInfo>? children})
      : super(
          AuthRouter.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i2.BookDetail]
class BookDetailPage extends _i4.PageRouteInfo<BookDetailPageArgs> {
  BookDetailPage({
    _i5.Key? key,
    required _i6.ProductModel productModel,
  }) : super(
          BookDetailPage.name,
          path: '/book-detail',
          args: BookDetailPageArgs(
            key: key,
            productModel: productModel,
          ),
        );

  static const String name = 'BookDetailPage';
}

class BookDetailPageArgs {
  const BookDetailPageArgs({
    this.key,
    required this.productModel,
  });

  final _i5.Key? key;

  final _i6.ProductModel productModel;

  @override
  String toString() {
    return 'BookDetailPageArgs{key: $key, productModel: $productModel}';
  }
}

/// generated route for
/// [_i3.BookList]
class BookListPage extends _i4.PageRouteInfo<void> {
  const BookListPage()
      : super(
          BookListPage.name,
          path: '',
        );

  static const String name = 'BookListPage';
}
