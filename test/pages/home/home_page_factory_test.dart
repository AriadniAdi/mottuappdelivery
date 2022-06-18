import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mottu_app_components/mottu_app_components.dart';
import 'package:mottudeliveryapp/pages/home/home_page.dart';
import 'package:mottudeliveryapp/pages/home/home_page_factory.dart';
import 'home_page_factory_test.mocks.dart';

@GenerateMocks([
  DeliveriesFactory,
  StatusFactory,
  EarningsFactory,
  NextTransferFactory,
  SearchDriversFactory,
])
void main() {
  testWidgets('build', (tester) async {
    final sut = makeSUT();

    await tester.pumpWidget(MaterialApp(home: sut.build()));
    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
    expect(find.byKey(const Key('status')), findsOneWidget);
    expect(find.byKey(const Key('deliveries')), findsOneWidget);
    expect(find.byKey(const Key('earnings')), findsOneWidget);
    expect(find.byKey(const Key('nextTransfer')), findsOneWidget);
    expect(find.byKey(const Key('searchDrivers')), findsOneWidget);
  });
}

HomePageFactory makeSUT() {
  final deliveries = MockDeliveriesFactory();
  final earnings = MockEarningsFactory();
  final nextTransfer = MockNextTransferFactory();
  final searchDrivers = MockSearchDriversFactory();
  final status = MockStatusFactory();
  when(status.build()).thenReturn(Container(key: const Key('status')));
  when(deliveries.build()).thenReturn(Container(key: const Key('deliveries')));
  when(earnings.build()).thenReturn(Container(key: const Key('earnings')));
  when(nextTransfer.build()).thenReturn(
    Container(key: const Key('nextTransfer')),
  );
  when(searchDrivers.build()).thenReturn(
    Container(key: const Key('searchDrivers')),
  );
  return HomePageFactory(
    deliveriesFactory: deliveries,
    earningsFactory: earnings,
    nextTransferFactory: nextTransfer,
    searchDriversFactory: searchDrivers,
    statusFactory: status,
  );
}
