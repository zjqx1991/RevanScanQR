import 'dart:async';

import 'package:flutter/services.dart';

class RevanScanQr {
  static const MethodChannel _channel =
      const MethodChannel('revan_scan_qr');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
