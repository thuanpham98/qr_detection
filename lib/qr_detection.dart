
import 'dart:async';

import 'package:flutter/services.dart';

class QrDetection {
  static const MethodChannel _channel = MethodChannel('qr_detection');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
