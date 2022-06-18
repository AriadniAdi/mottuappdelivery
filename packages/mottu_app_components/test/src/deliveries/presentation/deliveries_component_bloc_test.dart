import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:mottu_app_components/src/deliveries/domain/deliveries_use_case.dart';
import 'package:mottu_app_components/src/deliveries/presentation/deliveries_component_bloc.dart';

import 'deliveries_component_bloc_test.mocks.dart';

@GenerateMocks([DeliveriesUseCase])
void main() {
  test('#observeDeliveries', () {
    const deliveries = 20;
    final useCase = MockDeliveriesUseCase();
    when(useCase.observeDeliveries()).thenAnswer(
      (_) => Stream.value(deliveries),
    );
    final sut = makeSUT(useCase);

    expect(sut.observeDeliveries(), emits('$deliveries'));
  });
}

DeliveriesComponentBloc makeSUT(DeliveriesUseCase useCase) =>
    DeliveriesComponentBloc(useCase: useCase);
