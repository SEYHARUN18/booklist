// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:book_list/config/app_config.dart';
import 'package:book_list/environment/environment.dart';
import 'package:book_list/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:book_list/my_app.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    GetIt.instance.registerSingleton<AppRouter>(AppRouter());
    final storage = await HydratedStorage.build(
      storageDirectory: await getApplicationDocumentsDirectory(),
    );
    HydratedBlocOverrides.runZoned(
      () {
        AppConfig(env: Environment.dev());

        return runApp(
          ScreenUtilInit(
            designSize: const Size(390, 844),
            minTextAdapt: true,
            builder: (context, child) => const Initialize(),
          ),
        );
      },
      storage: storage,
    );
  }, blocObserver: AppBlocObserver());
}

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc is Cubit) log('$change');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    log('$transition');
  }
}

class Initialize extends HookWidget {
  const Initialize({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}
