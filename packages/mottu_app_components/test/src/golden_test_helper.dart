import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> takeScreenshot(
  WidgetTester tester, {
  required GoldenBuilder builder,
  required String fileName,
}) async {
  await loadAppFonts();
  await tester.pumpWidgetBuilder(builder.build());
  await screenMatchesGolden(tester, fileName);
}
