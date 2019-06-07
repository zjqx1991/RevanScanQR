import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:revan_scan_qr/revan_scan_qr.dart';

void main() {
  const MethodChannel channel = MethodChannel('revan_scan_qr');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await RevanScanQr.platformVersion, '42');
  });
}
