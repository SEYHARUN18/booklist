import 'package:book_list/environment/environment.dart';

extension DevEnvironment on Environment {
  static Environment config() {
    return Environment(
      envName: 'dev',
      apiBaseUrl: 'https://fakestoreapi.com/',
      secondApiBaseUrl: '',
      storageBaseUrl: '',
      iosClientKey: '',
      androidClientKey: '',
    );
  }
}
