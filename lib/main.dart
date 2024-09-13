import 'package:book_list/config/app_config.dart';
import 'package:book_list/environment/environment.dart';
import 'package:flutter/material.dart';
import 'package:book_list/my_app.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig(env: Environment.dev());
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );
  HydratedBlocOverrides.runZoned(
    () => runApp(
      ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        builder: (context, child) => const Initialize(),
      ),
    ),
    storage: storage,
  );
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
