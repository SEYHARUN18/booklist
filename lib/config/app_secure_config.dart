import 'package:book_list/config/app_secure_config_type.dart';

class AppSecureConfig with AppSecureConfigType {
  static final AppSecureConfig shared = AppSecureConfig._instance();

  factory AppSecureConfig() {
    shared.authToken = '';
    return shared;
  }

  AppSecureConfig._instance();
}
