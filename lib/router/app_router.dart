import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:book_list/presentation/book_detail.dart';
import 'package:book_list/presentation/book_list.dart';
import 'package:flutter/material.dart';

Route<T> myCustomRouteBuilder<T>(
  BuildContext context,
  Widget child,
  CustomPage<T> page,
) {
  return PageRouteBuilder(
    fullscreenDialog: page.fullscreenDialog,
    // this is important
    settings: page,
    barrierColor: const Color.fromRGBO(0, 0, 0, 0.5),
    opaque: false,
    barrierDismissible: true,
    pageBuilder: (_, __, ___) => child,
  );
}

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: EmptyRouterPage,
      name: 'AuthRouter',
      children: [
        AutoRoute(
          page: BookList,
          name: 'BookListPage',
          initial: true,
        ),
      ],
    ),
    CustomRoute(
      page: BookDetail,
      name: 'BookDetailPage',
      transitionsBuilder: TransitionsBuilders.slideBottom,
    ),
  ],
)
class $AppRouter {}
