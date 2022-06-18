import 'package:flutter/material.dart';

import 'search_drivers_localization.dart';

class SearchDriversComponent extends StatelessWidget {
  const SearchDriversComponent({Key? key, required this.localization})
      : super(key: key);

  final SearchDriversLocalization localization;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            localization.searchTitle,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
