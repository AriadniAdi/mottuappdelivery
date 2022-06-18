import 'package:flutter/material.dart';

import 'presentation/search_drivers_component.dart';
import 'presentation/search_drivers_localization.dart';

class SearchDriversFactory {
  SearchDriversFactory({required this.localization});

  final SearchDriversLocalization localization;

  Widget build() {
    return SearchDriversComponent(
      localization: localization,
    );
  }
}
