import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mottu_app_components/mottu_app_components.dart';
import 'package:mottu_app_components/src/deliveries/presentation/deliveries_component.dart';
import 'package:mottu_app_components/src/deliveries/presentation/deliveries_component_bloc.dart';

import '../../golden_test_helper.dart';
import 'deliveries_component_test.mocks.dart';

@GenerateMocks([
  DeliveriesComponentBloc,
  DeliveriesLocalization,
])
void main() {
  testGoldens('render components', (tester) async {
    await takeScreenshot(
      tester,
      builder: GoldenBuilder.grid(
        columns: 2,
        widthToHeightRatio: 1,
      )
        ..addScenario('error', makeSUT(() => Stream.error('error')))
        ..addScenario('loaded', makeSUT(() => Stream.value('20'))),
      fileName: 'deliveries/default',
    );
  });
}

Widget makeSUT(Stream<String> Function() mock) {
  final bloc = MockDeliveriesComponentBloc();
  final l10n = MockDeliveriesLocalization();
  when(bloc.observeDeliveries()).thenAnswer((_) => mock());
  when(l10n.deliveriesTitle).thenReturn('deliveriesTitle');
  return DeliveriesComponent(bloc: bloc, localization: l10n);
}
