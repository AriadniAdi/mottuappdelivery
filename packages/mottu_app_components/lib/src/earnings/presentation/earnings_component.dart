import 'package:flutter/material.dart';
import 'package:mottu_app_components/src/earnings/presentation/earnings_component_bloc.dart';

import '../../widgets/informative_tab_texts.dart';
import 'earnings_localization.dart';

class EarningsComponent extends StatelessWidget {
  const EarningsComponent({
    Key? key,
    required this.localization,
    required this.bloc,
  }) : super(key: key);
  final EarningsLocalization localization;
  final EarningsComponentBloc bloc;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      stream: bloc.observeEarnings(),
      builder: (context, snapshot) {
        return InformativeTabTexts(
          title: localization.earningsTitle,
          value: snapshot.data ?? '-',
        );
      },
    );
  }
}
