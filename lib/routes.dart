import 'package:flutter/material.dart';
import 'package:mottu_app_components/mottu_app_components.dart';
import 'package:mottudeliveryapp/data/earnings_repository.dart';
import 'data/deliveries_repository.dart';
import 'generated/l10n.dart';
import 'pages/home/home_page_factory.dart';

Route<dynamic>? routes(RouteSettings settings) {
  if (settings.name == '/') {
    return MaterialPageRoute(builder: (context) {
      final l10 = _Localization(context);
      return HomePageFactory(
        earningsFactory: EarningsFactory(
          localization: l10,
          repository: EarningsRepositoryImpl(),
        ),
        deliveriesFactory: DeliveriesFactory(
          localization: l10,
          repository: DeliveriesRepositoryImpl(),
        ),
        statusFactory: StatusFactory(localization: l10),
        nextTransferFactory: NextTransferFactory(localization: l10),
        searchDriversFactory: SearchDriversFactory(localization: l10),
      ).build();
    });
  }
  return MaterialPageRoute(builder: (_) => Container());
}

class _Localization extends S
    implements
        StatusLocalization,
        EarningsLocalization,
        DeliveriesLocalization,
        SearchDriversLocalization,
        NextTransferLocalization {
  _Localization(this.context);
  final BuildContext context;

  @override
  String get statusTitle => S.of(context).isOnlineText;

  @override
  String get earningsTitle => S.of(context).earningsTitle;

  @override
  String get nextTitle => S.of(context).nextTransferTitle;

  @override
  String get searchTitle => S.of(context).searchDrivers;

  @override
  String get deliveriesTitle => S.of(context).deliveriesTitle;
}
