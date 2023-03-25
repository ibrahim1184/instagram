import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import '/core/utils/colors.dart';

showLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.threeBounce
    ..loadingStyle = EasyLoadingStyle.custom
    ..maskType = EasyLoadingMaskType.custom
    ..indicatorSize = 25.0
    ..radius = 5.0
    ..contentPadding = const EdgeInsets.all(15)
    ..backgroundColor = ColorRes.gray50
    ..indicatorColor = ColorRes.red400
    ..textColor = ColorRes.white
    ..maskColor = ColorRes.black.withOpacity(0.2)
    ..userInteractions = false
    ..dismissOnTap = false;
  return EasyLoading.show();
}

dismissLoading() {
  EasyLoading.dismiss();
}
