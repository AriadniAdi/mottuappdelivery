import 'package:flutter/material.dart';

import 'status_localization.dart';

class StatusComponent extends StatefulWidget {
  const StatusComponent({Key? key, required this.localization})
      : super(key: key);

  final StatusLocalization localization;

  @override
  State<StatusComponent> createState() => _StatusComponentState();
}

class _StatusComponentState extends State<StatusComponent> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('Online'),
        Switch(
          value: _status,
          onChanged: (bool newValue) {
            setState(() {
              _status = newValue;
            });
          },
        ),
      ],
    );
  }
}
