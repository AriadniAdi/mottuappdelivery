import 'package:flutter/material.dart';
import 'package:mottu_app_components/src/deliveries/domain/deliveries_repository.dart';
import 'package:mottu_app_components/src/deliveries/domain/deliveries_use_case.dart';
import 'package:mottu_app_components/src/deliveries/presentation/deliveries_component_bloc.dart';

import 'presentation/deliveries_component.dart';
import 'presentation/deliveries_localization.dart';

class DeliveriesFactory {
  const DeliveriesFactory({
    required this.localization,
    required this.repository,
  });
  final DeliveriesLocalization localization;
  final DeliveriesRepository repository;

  Widget build() {
    return DeliveriesComponent(
      localization: localization,
      bloc: DeliveriesComponentBloc(
        useCase: DeliveriesUseCase(
          repository: repository,
        ),
      ),
    );
  }
}
