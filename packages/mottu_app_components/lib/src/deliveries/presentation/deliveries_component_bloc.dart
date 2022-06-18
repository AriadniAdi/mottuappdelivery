import '../domain/deliveries_use_case.dart';

class DeliveriesComponentBloc {
  const DeliveriesComponentBloc({required this.useCase});
  final DeliveriesUseCase useCase;

  Stream<String> observeDeliveries() =>
      useCase.observeDeliveries().map((value) => '$value');
}
