import 'package:book_list/environment/dev/dev_environment.dart';

class Environment {
  Environment({
    required this.envName,
    required this.apiBaseUrl,
    required this.storageBaseUrl,
    required this.iosClientKey,
    required this.androidClientKey,
    required this.secondApiBaseUrl,
  });

  factory Environment.dev() {
    return DevEnvironment.config();
  }

  final String envName;
  final String apiBaseUrl;
  final String storageBaseUrl;
  final String iosClientKey;
  final String androidClientKey;
  final String secondApiBaseUrl;
}
