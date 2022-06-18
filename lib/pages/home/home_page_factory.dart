import 'package:flutter/material.dart';
import 'package:mottu_app_components/mottu_app_components.dart';

import 'home_page.dart';

class HomePageFactory {
  HomePageFactory({
    required this.statusFactory,
    required this.deliveriesFactory,
    required this.earningsFactory,
    required this.nextTransferFactory,
    required this.searchDriversFactory,
  });

  final StatusFactory statusFactory;
  final DeliveriesFactory deliveriesFactory;
  final EarningsFactory earningsFactory;
  final NextTransferFactory nextTransferFactory;
  final SearchDriversFactory searchDriversFactory;
  Widget build() {
    return HomePage(
      tabActions: [statusFactory.build()],
      headerInfos: [
        deliveriesFactory.build(),
        earningsFactory.build(),
        nextTransferFactory.build(),
      ],
      content: searchDriversFactory.build(),
    );
  }
}
