import 'package:flutter/material.dart';

import 'presentation/status_component.dart';
import 'presentation/status_localization.dart';

class StatusFactory {
  StatusFactory({required this.localization});

  final StatusLocalization localization;
  Widget build() {
    return StatusComponent(
      localization: localization,
    );
  }
}
