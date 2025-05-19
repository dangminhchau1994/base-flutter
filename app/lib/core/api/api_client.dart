import 'package:app/core/api/dio_logging_interceptor.dart';
import 'package:app/core/services/app_event.dart';
import 'package:app/core/utils/app_config.dart';
import 'package:app/di/inject_container.dart';
import 'package:dio/dio.dart';

const kTimeout = Duration(seconds: 30);
BaseOptions _defaultOptions = BaseOptions(
  baseUrl: getIt<AppConfig>().baseUrl ?? '',
  responseType: ResponseType.json,
  connectTimeout: kTimeout,
  receiveTimeout: kTimeout,
  sendTimeout: kTimeout,
  headers: {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  },
);

class ApiClient {
  final Dio _dio;
  final bool _debug;
  String? accessToken;

  Dio get client => _dio;

  ApiClient({
    BaseOptions? options,
    bool debug = false,
  })  : _dio = Dio(_defaultOptions),
        _debug = debug {
    if (_debug) {
      _dio.interceptors.add(
        DioLoggingInterceptor(
          logPrint: print,
          compact: false,
        ),
      );
    }

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (accessToken != null) {
            options.headers['Authorization'] = accessToken;
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (error, handler) {
          final statusCode = error.response?.statusCode;

          if (statusCode == 401) eventBus.fire(const LogOutEvent());
          return handler.next(error);
        },
      ),
    );
  }

  void setBaseUrl(String url) {
    _dio.options.baseUrl = url;
  }
}
