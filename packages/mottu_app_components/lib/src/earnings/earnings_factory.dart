import 'package:flutter/material.dart';
import 'package:mottu_app_components/src/earnings/domain/earnings_repository.dart';
import 'package:mottu_app_components/src/earnings/domain/earnings_use_case.dart';
import 'package:mottu_app_components/src/earnings/presentation/earnings_component_bloc.dart';

import 'presentation/earnings_component.dart';
import 'presentation/earnings_localization.dart';

class EarningsFactory {
  const EarningsFactory({
    required this.localization,
    required this.repository,
  });
  final EarningsLocalization localization;
  final EarningsRepository repository;

  Widget build() {
    return EarningsComponent(
      localization: localization,
      bloc: EarningsComponentBloc(
        useCase: EarningsUseCase(
          repository: repository,
        ),
      ),
    );
  }
}
