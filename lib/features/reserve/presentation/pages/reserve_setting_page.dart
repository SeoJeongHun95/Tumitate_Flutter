import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/rate_list_provider.dart';

class ReserveSettingPage extends ConsumerWidget {
  const ReserveSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateList = ref.watch(rateListProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "表示 (${rateList.length})",
          style: TextStyle(
            color: rateList.length == 10 ? Colors.black : Colors.red,
            fontSize: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "完了",
              style: TextStyle(
                color: Colors.lightGreen,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(child: Container()),
    );
  }
}
