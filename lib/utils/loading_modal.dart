import 'dart:developer';

import 'package:flutter/services.dart';

class LoadingModal {
  const LoadingModal();

  static const platform = MethodChannel('ChannelProgressHUD');

  static void show() {
    try {
      platform.invokeMethod('show');
    } on PlatformException catch (e) {
      log('${e.message}');
    }
  }

  static void hide() {
    platform.invokeMethod('hide');
  }
}
