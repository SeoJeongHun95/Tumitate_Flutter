import 'package:flutter/material.dart';

import '../../../../core/theme/local/jp_strings.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(JPStrings.LOGO);
  }
}
