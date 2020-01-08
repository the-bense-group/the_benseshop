import 'package:get_it/get_it.dart';
import 'package:thebenseshope/controller/CustomerController.dart';
import 'package:thebenseshope/controller/MainController.dart';
import 'package:thebenseshope/controller/OrderController.dart';
import 'package:thebenseshope/service/clsApi.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerSingleton(
    () => MainController(),
  );
  locator.registerSingleton(
    () => CustomerController(),
  );
  locator.registerSingleton(
    () => OrderController(),
  );
  locator.registerLazySingleton(
    () {
      ClsAPI(
        'Customer',
      );
    },
  );
}
