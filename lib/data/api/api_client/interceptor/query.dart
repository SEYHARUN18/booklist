import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class QueryInterceptor extends InterceptorsWrapper {
  // static const _contentType =
  //     'multipart/form-data; boundary=<calculated when request is sent>';
  // static const _applicationJson = 'application/json';

  final String? identityBaseDomain;
  final bool expectResponseJson;
  final bool ignoreToken;
  // final Connectivity connectivity = Connectivity();
  final bool ignoreConnection;
  final String clientKey;

  QueryInterceptor({
    this.expectResponseJson = false,
    required this.identityBaseDomain,
    this.ignoreConnection = false,
    this.ignoreToken = false,
    required this.clientKey,
  });

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.queryParameters.removeWhere((key, value) => value == null);
    // options.headers.addEntries({'x-clien-keyt': clientKey}.entries);
    // options.headers.addEntries(
    //   {'x-device-imei': DeviceInfoHelper.instance.uuid}.entries,
    // );
    // // options.headers.addEntries({'x-timezone': DateTime.now().timeZoneName}.entries);
    // options.headers.addEntries(
    //   {'x-client-platform': DeviceInfoHelper.instance.platform}.entries,
    // );
    // options.headers.addEntries(
    //   {'x-app-version': DeviceInfoHelper.instance.appVersion}.entries,
    // );
    // options.headers.addEntries(
    //   {'content-type': 'multipart/form-data'}.entries,
    // );

    final token = options.headers['Authorization'];
    if (token == null) {
      const storage = FlutterSecureStorage();
      final authToken = await storage.read(key: clientKey);
      if (authToken != null) {
        log(authToken);
        options.headers.addEntries(
          {'Authorization': 'Bearer $authToken'}.entries,
        );
      }
    }
    return super.onRequest(options, handler);
  }

  @override
  Future onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    super.onError(err, handler);
  }
}
