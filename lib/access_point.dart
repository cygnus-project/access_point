import 'dart:async';

import 'package:flutter/services.dart';

class AccessPoint {
  static const MethodChannel _channel =
      const MethodChannel('access_point');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
