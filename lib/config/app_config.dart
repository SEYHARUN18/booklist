import 'package:book_list/config/config.dart';
import 'package:book_list/environment/environment.dart';

class AppConfig with AppConfigType {
  static final AppConfig shared = AppConfig._instance();

  factory AppConfig({required Environment env}) {
    shared.env = env;
    return shared;
  }

  AppConfig._instance();
  Environment? env;

  @override
  String get envName => env?.envName ?? 'unknown';

  @override
  String get apiBaseUrl => env?.apiBaseUrl ?? '';

  @override
  String get storageBaseUrl => env?.storageBaseUrl ?? '';

  @override
  String get androidClientKey => env?.androidClientKey ?? '';

  @override
  String get iosClientKey => env?.iosClientKey ?? '';

  @override
  String get secondApiBaseUrl => env?.secondApiBaseUrl ?? '';
}
