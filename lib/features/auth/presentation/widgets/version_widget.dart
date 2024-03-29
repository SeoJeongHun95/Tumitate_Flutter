import 'package:flutter/material.dart';

import '../../../../core/theme/local/jp_strings.dart';

class VersionWidget extends StatelessWidget {
  const VersionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.maxFinite,
      child: Text(
        JPStrings.VERSION + JPStrings.VERSION_NUMBER,
        textAlign: TextAlign.end,
      ),
    );
  }
}
