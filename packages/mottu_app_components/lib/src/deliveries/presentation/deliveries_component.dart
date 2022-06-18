import 'package:flutter/material.dart';

import '../../widgets/informative_tab_texts.dart';
import 'deliveries_component_bloc.dart';
import 'deliveries_localization.dart';

class DeliveriesComponent extends StatelessWidget {
  const DeliveriesComponent({
    Key? key,
    required this.localization,
    required this.bloc,
  }) : super(key: key);

  final DeliveriesLocalization localization;
  final DeliveriesComponentBloc bloc;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: bloc.observeDeliveries(),
      builder: (_, snapshot) {
        return InformativeTabTexts(
          title: localization.deliveriesTitle,
          value: snapshot.data ?? '-',
        );
      },
    );
  }
}
