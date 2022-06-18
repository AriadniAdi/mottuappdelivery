import '../domain/earnings_use_case.dart';

class EarningsComponentBloc {
  const EarningsComponentBloc({required this.useCase});
  final EarningsUseCase useCase;

  Stream<String> observeEarnings() =>
      useCase.observeEarnings().map((value) => '$value');
}
