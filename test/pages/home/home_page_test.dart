import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mottudeliveryapp/pages/home/home_page.dart';

void main() {
  testGoldens('render components', (tester) async {
    await loadAppFonts();
    final builder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(
        devices: [
          Device.phone,
          Device.iphone11,
          Device.tabletPortrait,
          Device.tabletLandscape,
        ],
      )
      ..addScenario(name: 'Home page Screenshot test', widget: makeSUT());

    await tester.pumpDeviceBuilder(builder);

    await screenMatchesGolden(tester, 'home/home_page');
  });
}

HomePage makeSUT() {
  return HomePage(
    content: Container(
      color: Colors.blue,
      height: 200,
    ),
    headerInfos: [
      Container(
        color: Colors.red,
        height: 100,
      ),
      Container(
        color: Colors.yellow,
        height: 100,
      ),
      Container(
        color: Colors.green,
        height: 100,
      )
    ],
    tabActions: [
      Container(
        color: Colors.red,
        width: 40,
      ),
      Container(
        color: Colors.yellow,
        width: 60,
      ),
    ],
  );
}
