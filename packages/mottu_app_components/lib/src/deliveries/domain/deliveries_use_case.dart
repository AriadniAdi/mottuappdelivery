import 'package:mottu_app_components/src/deliveries/domain/deliveries_repository.dart';

class DeliveriesUseCase {
  const DeliveriesUseCase({required this.repository});
  final DeliveriesRepository repository;

  Stream<int> observeDeliveries() => repository.observeDeliveries();
}
