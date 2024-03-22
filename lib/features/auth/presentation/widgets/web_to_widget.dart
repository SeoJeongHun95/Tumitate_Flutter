import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/local/jp_strings.dart';

final Uri _url = Uri.parse(JPStrings.WEBTOLINK_URL);

class WebToWidget extends StatelessWidget {
  const WebToWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () => _launchUrl(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(JPStrings.WEBTOLINK_TEXT_1),
              Gap(4.w),
              const Icon(Icons.open_in_browser_rounded),
            ],
          ),
        ),
        TextButton(
          onPressed: () => _launchUrl(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(JPStrings.WEBTOLINK_TEXT_2),
              Gap(4.w),
              const Icon(Icons.open_in_browser_rounded),
            ],
          ),
        ),
        TextButton(
          onPressed: () => _launchUrl(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(JPStrings.WEBTOLINK_TEXT_3),
              Gap(4.w),
              const Icon(Icons.open_in_browser_rounded),
            ],
          ),
        ),
      ],
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
