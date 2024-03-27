import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/rate_list_provider.dart';
import '../providers/rate_setting_provider.dart';
import '../widgets/rate_liset_setting_widget.dart';

class ReserveSettingPage extends ConsumerWidget {
  const ReserveSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rateSettingList = ref.watch(rateSettingListProvider);
    //앞 위 밑 z
    //앞 위 밑 space

    //q w e 비 r 비
    //a s d f g 비 h 비
    //v b s 비 c 비

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        scrolledUnderElevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "表示 (${rateSettingList.where((element) => element.show).toList().length})",
          style: TextStyle(
            color: rateSettingList
                        .where((element) => element.show)
                        .toList()
                        .length ==
                    rateSettingList.length
                ? Colors.black
                : Colors.red,
            fontSize: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              ref
                  .read(rateListProvider.notifier)
                  .chageSetting(changeList: rateSettingList);
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
      body: const SafeArea(child: RateListSettingWidget()),
    );
  }
}
