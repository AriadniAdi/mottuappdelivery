import 'package:mottu_app_components/mottu_app_components.dart';

class DeliveriesRepositoryImpl implements DeliveriesRepository {
  @override
  Stream<int> observeDeliveries() {
    return Stream.value(200);
  }
}
