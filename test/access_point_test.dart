import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:access_point/access_point.dart';

void main() {
  const MethodChannel channel = MethodChannel('access_point');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AccessPoint.platformVersion, '42');
  });
}
