import 'earnings_repository.dart';

class EarningsUseCase {
  const EarningsUseCase({required this.repository});
  final EarningsRepository repository;

  Stream<int> observeEarnings() => repository.observeEarnings();
}
