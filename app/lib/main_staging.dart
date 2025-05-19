import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:app/di/app_locator.dart';
import 'package:app/bootstrap.dart';

void main() async {
  await dotenv.load(fileName: ".envStag.staging");
  setupLocator();
  bootstrap();
}
