import 'package:mottu_app_components/mottu_app_components.dart';

class EarningsRepositoryImpl implements EarningsRepository {
  @override
  Stream<int> observeEarnings() {
    return Stream.value(0);
  }
}
