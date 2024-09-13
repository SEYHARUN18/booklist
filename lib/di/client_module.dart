import 'dart:io';

import 'package:book_list/data/api/api_client/api_client.dart';
import 'package:book_list/data/api/api_client/api_client_type.dart';
import 'package:book_list/data/api/api_client/second_api_client.dart';
import 'package:book_list/data/api/api_client/second_api_client_type.dart';
import 'package:book_list/di/di.dart';

mixin ClientModule on ConfigModule {
  /// API/REST Client
  APIClientType get apiClient {
    final APIClientType apiClient = APIClient.apiClient(
      baseUrl: appConfig.apiBaseUrl,
      clientKey:
          Platform.isIOS ? appConfig.iosClientKey : appConfig.androidClientKey,
    );

    return apiClient;
  }

  SecondAPIClientType get secondApiClient {
    final SecondAPIClientType apiClient = SecondAPIClient.apiClient(
      baseUrl: appConfig.secondApiBaseUrl,
      clientKey:
          Platform.isIOS ? appConfig.iosClientKey : appConfig.androidClientKey,
    );

    return apiClient;
  }
}
