import 'package:app/core/api/api_client.dart';
import 'package:app/core/utils/app_config.dart';
import 'package:app/di/inject_container.dart';
import 'package:app/init_app.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void setupLocator() {
  getIt.registerSingleton<AppConfig>(
      initAppConfig(baseUrl: dotenv.env['BASE_URL'] ?? ''));

  getIt.registerSingleton<ApiClient>(ApiClient());
}
