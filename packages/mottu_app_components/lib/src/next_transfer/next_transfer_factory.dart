import 'package:flutter/material.dart';

import 'presentation/next_transfer_component.dart';
import 'presentation/next_transfer_localization.dart';

class NextTransferFactory {
  NextTransferFactory({required this.localization});

  final NextTransferLocalization localization;

  Widget build() {
    return NextTransferComponent(
      localization: localization,
    );
  }
}
