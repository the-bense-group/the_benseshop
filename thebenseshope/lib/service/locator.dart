import 'package:get_it/get_it.dart';
import 'package:thebenseshope/controller/CustomerController.dart';
import 'package:thebenseshope/controller/MainController.dart';
import 'package:thebenseshope/service/clsApi.dart';

GetIt locator = GetIt.asNewInstance();
void setupLocator() {
  locator.registerLazySingleton(() => ClsAPI('Customer'));
  locator.registerLazySingleton(() => CustomerController());
  locator.registerLazySingleton(() => MainController());
}
