import 'package:flutter/material.dart';

import '../../widgets/informative_tab_texts.dart';
import 'next_transfer_localization.dart';

class NextTransferComponent extends StatelessWidget {
  const NextTransferComponent({Key? key, required this.localization})
      : super(key: key);

  final NextTransferLocalization localization;

  @override
  Widget build(BuildContext context) {
    return InformativeTabTexts(
      title: localization.nextTitle,
      value: 'RS 1406,87',
    );
  }
}
