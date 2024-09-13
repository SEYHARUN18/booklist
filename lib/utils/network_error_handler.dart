// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:developer';

import 'package:book_list/domain/model/network_error/network_error.dart';
import 'package:book_list/router/app_router.gr.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class NetworkErrorHandler {
  final DioException error;

  NetworkErrorHandler(this.error);
  NetworkError exec() {
    if (error.response?.statusCode == 401) {
      const storage = FlutterSecureStorage();
      storage.deleteAll();
      GetIt.instance<AppRouter>().replaceAll([const AuthRouter()]);
      return NetworkError(
        title: 'Oops...',
        description: 'Unauthorized',
        statusCode: error.response?.statusCode,
      );
    }
    for (final key in _networkError().keys) {
      if (error.type == key) {
        try {
          return _networkError()[key] as NetworkError;
        } catch (e) {
          if (error.response?.statusCode == 400) {
            NetworkError(
              title: 'Something Went Wrong',
              description:
                  jsonDecode(error.response.toString())['message'] as String,
              statusCode: error.response?.statusCode,
            );
          }
          // final expired = jsonDecode(error.response.toString())['message'] as String;
          if (error.response?.statusCode == 413) {
            return NetworkError(
              title: 'Something Went Wrong',
              description: 'Request Entity Too Large',
              statusCode: 413,
            );
          }
          if (error.response?.statusCode == 404) {
            return NetworkError(
              title: 'Not Found',
              description: 'Your Requested Url Was Not Found',
              statusCode: 404,
            );
          }
          if (error.response?.statusCode == 500) {
            return NetworkError(
              title: 'Server Error',
              description: 'Sorry Something Went Wrong From Our Server',
              statusCode: 500,
            );
          }
          if (error.response?.statusCode == 502) {
            return NetworkError(
              title: 'Error',
              description: 'Bad Gateway',
              statusCode: 502,
            );
          }
          if (error.response?.statusCode == 413) {
            return NetworkError(
              title: 'Something Went Wrong',
              description: 'Request Entity Too Large',
              statusCode: 413,
            );
          }
        }
      } else if (error.type == DioExceptionType.badResponse) {
        final networkError = _networkError()[DioExceptionType.badResponse]
            [error.response?.statusCode.toString()];
        log('nEt$networkError');
        return _defaultNetworkError(networkError);
      }
    }

    return NetworkError(
      title: 'Something Went Wrong',
      description: 'Sorry This Is An Unexpected Error',
      statusCode: error.response?.statusCode,
    );
  }

  NetworkError _defaultNetworkError(dynamic networkError) {
    // log(statusCode.toString());

    if (networkError == null) {
      return NetworkError(
        title: 'Something Went Wrong',
        description: 'Sorry This Is An Unexpected Error',
        statusCode: error.response?.statusCode,
      );
    }
    return networkError as NetworkError;
  }

  Map<DioExceptionType, dynamic> _networkError() {
    try {
      final Map<DioExceptionType, dynamic> networkError = {
        DioExceptionType.cancel: NetworkError(
          title: 'Cancelled',
          description: 'Your Request Has Been Cancelled',
        ),
        DioExceptionType.connectionTimeout: NetworkError(
          title: 'Connection Timeout',
          description: 'Your Connection Is Timeout',
        ),
        DioExceptionType.receiveTimeout: NetworkError(
          title: 'Recieve Timeout',
          description: 'Your Recieving Data Is Timeout',
        ),
        DioExceptionType.badResponse: {
          '400': NetworkError(
            title: 'Something Went Wrong',
            description:
                jsonDecode(error.response.toString())['message'] as String,
            statusCode: error.response?.statusCode,
          ),
          '404': NetworkError(
            title: 'Something Went Wrong',
            description: 'Your Requested Url Was Not Found',
            statusCode: error.response?.statusCode,
          ),
          '422': NetworkError(
            title: 'Something Went Wrong',
            description:
                jsonDecode(error.response.toString())['message'] as String,
            statusCode: error.response?.statusCode,
          ),
          '403': NetworkError(
            title: 'Something Went Wrong',
            description:
                jsonDecode(error.response.toString())['message'] as String,
            statusCode: error.response?.statusCode,
          ),
        },
      };

      return networkError;
    } catch (e) {
      final Map<DioExceptionType, dynamic> netWorkError = {
        DioExceptionType.badResponse: {
          '404': NetworkError(
            title: 'Something Went Wrong',
            description: 'Your Requested Url Was Not Found',
            statusCode: error.response?.statusCode,
          ),
        }
      };
      return netWorkError;
    }
  }
}
