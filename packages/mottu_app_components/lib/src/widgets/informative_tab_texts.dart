import 'package:flutter/material.dart';

class InformativeTabTexts extends StatelessWidget {
  const InformativeTabTexts({
    Key? key,
    required this.title,
    required this.value,
  }) : super(key: key);

  final String title, value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.labelMedium,
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
