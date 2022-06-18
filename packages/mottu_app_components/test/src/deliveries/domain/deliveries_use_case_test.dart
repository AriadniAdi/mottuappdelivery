import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mottu_app_components/mottu_app_components.dart';
import 'package:mottu_app_components/src/deliveries/domain/deliveries_use_case.dart';

import 'deliveries_use_case_test.mocks.dart';

@GenerateMocks([DeliveriesRepository])
void main() {
  test('#observeDeliveries', () {
    const deliveries = 20;
    final repository = MockDeliveriesRepository();
    when(repository.observeDeliveries()).thenAnswer(
      (_) => Stream.value(deliveries),
    );
    final sut = makeSUT(repository);

    expect(sut.observeDeliveries(), emits(deliveries));
  });
}

DeliveriesUseCase makeSUT(MockDeliveriesRepository repository) =>
    DeliveriesUseCase(repository: repository);
