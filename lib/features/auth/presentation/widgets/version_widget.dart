import 'package:flutter/material.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Text(
        "Ver 1.0.00",
        textAlign: TextAlign.end,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
