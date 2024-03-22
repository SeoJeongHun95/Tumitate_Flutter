import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/models/rate.dart';
import '../providers/rate_list_provider.dart';

class ReservePage extends ConsumerWidget {
  const ReservePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateList = ref.watch(rateListProvider);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
              color: Colors.lightGreen,
              size: 30,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            final Rate rate = rateList[index];
            return Row(
              children: [Text(rate.meigaraMei), Text(rate.diff)],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: rateList.length,
        ),
      ),
    );
  }
}
