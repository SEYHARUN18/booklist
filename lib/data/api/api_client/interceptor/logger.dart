import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class LoggerInterceptor extends PrettyDioLogger {
  LoggerInterceptor({bool disableRequestBody = false})
      : super(
          requestBody: !disableRequestBody,
          requestHeader: true,
          responseHeader: true,
        );
}
