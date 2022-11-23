import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taha_test/platform/global_setting.dart';

class MainScreenLogic extends GetxController {
  RxString? deviceName = ''.obs;
  TextEditingController textEditingController=TextEditingController();
  Color? bg_color;
  RxBool? isShow = false.obs;
  void onInit() {
    deviceName!.value = deviceData.getDiviceName()!;
    getColor();
    super.onInit();
  }

  Color? getColor() {
    if (deviceName!.value == 'Android') {
      return bg_color = Colors.red;
    } else if (deviceName!.value == 'Web') {
      return bg_color = Colors.green;
    } else if (deviceName!.value == 'IOS') {
      return bg_color = Colors.blue;
    }
    return null;
  }
}
