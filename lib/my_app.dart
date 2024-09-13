import 'package:auto_route/auto_route.dart';
import 'package:book_list/domain/bloc/book_list/book_list_bloc.dart';
import 'package:book_list/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:book_list/di/di.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/subjects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'utils/ui_error_util.dart';

final PublishSubject<Map<String, String>> globalSnackBarSubject =
    PublishSubject<Map<String, String>>();

class MyApp extends HookWidget
    with ConfigModule, ClientModule, RepositoryModule {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GetIt.instance<AppRouter>();

    useEffect(
      () {
        UiErrorUtils.subscribeToSnackBarStream(context, globalSnackBarSubject);
        return () {};
      },
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BookListBloc(
            type: productRepository,
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Example Project',
        routerDelegate: AutoRouterDelegate(router),
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.defaultRouteParser(),
        // builder: (context, child) {
        //   return child;
        // },
      ),
    );
  }
}
