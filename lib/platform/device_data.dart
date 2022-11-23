import 'package:get/get.dart';

class DeviceData {
  String? device;

  String? getDiviceName() {
    if (GetPlatform.isAndroid) {
      device = 'Android';
      return device;
    } else if (GetPlatform.isIOS) {
      device = 'IOS';
      return device;
    } else if (GetPlatform.isWeb) {
      device = 'Web';
      return device;
    }
    return '';
  }
}
