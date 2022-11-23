import 'package:get_it/get_it.dart';
import 'package:taha_test/platform/device_data.dart';

final getIt = GetIt.instance;
late DeviceData deviceData;

init() async {
  getIt.registerLazySingleton(() => DeviceData());

  deviceData = getIt.get();
}
