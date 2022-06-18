import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mottu_app_components/mottu_app_components.dart';
import 'package:mottu_app_components/src/deliveries/presentation/deliveries_component.dart';
import 'deliveries_factory_test.mocks.dart';

@GenerateMocks([
  DeliveriesLocalization,
  DeliveriesRepository,
])
void main() {
  testWidgets('build component', (tester) async {
    await tester.pumpWidget(MaterialApp(home: makeSUT().build()));
    await tester.pumpAndSettle();

    expect(find.byType(DeliveriesComponent), findsOneWidget);
  });
}

DeliveriesFactory makeSUT() {
  final l10n = MockDeliveriesLocalization();
  when(l10n.deliveriesTitle).thenReturn('deliveriesTitle');
  final repository = MockDeliveriesRepository();
  when(repository.observeDeliveries()).thenAnswer(
    (_) => Stream.value(20),
  );
  return DeliveriesFactory(
    localization: l10n,
    repository: repository,
  );
}
