import 'package:chaplean/data/services/login_service.dart';
import 'package:chaplean/data/services/register_service.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton(() => RegisterService());
  getIt.registerLazySingleton(() => LoginService());
}
