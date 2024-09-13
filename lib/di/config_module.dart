import 'package:book_list/config/app_secure_config.dart';
import 'package:book_list/config/app_secure_config_type.dart';
import 'package:book_list/config/config.dart';

mixin ConfigModule {
  /// App config
  AppConfigType get appConfig {
    return AppConfig.shared;
  }

  /// App Secure config
  AppSecureConfigType get appSecureConfig {
    return AppSecureConfig();
  }
}
