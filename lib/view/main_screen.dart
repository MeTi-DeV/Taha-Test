import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:taha_test/view/main_screen_logic.dart';

class MainScreen extends StatelessWidget {
  MainScreenLogic logic = Get.put(MainScreenLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(
      () {
        return Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: logic.bg_color,
                width: 120,
                height: 120,
              ),
              TextButton(
                  onPressed: () {
                    logic.isShow!.value = true;
                  },
                  child: Text('Show Device Type')),
              SizedBox(
                height: 40,
              ),
              logic.isShow!.value ? Text('${logic.deviceName}') : SizedBox(),
              Container(
                width: MediaQuery.of(context).size.width/1.1
                ,
                child: TextField(
                  controller: logic.textEditingController,
                  inputFormatters:  [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]')),
                  TextInputFormatter.withFunction((oldValue, newValue) {
                      for (String char in newValue.text.characters) {
                        if (char.allMatches(newValue.text).length > 10) return oldValue;
                      }
                      return newValue;
                    }),],
                ),
              )
              
            ],
          ),
        );
      },
    ));
  }
}
