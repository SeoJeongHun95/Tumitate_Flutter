import 'dart:async';
import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/rate.dart';
import '../../domain/repositories/rates_repository.dart';
import 'rate_setting_provider.dart';

part 'rate_list_provider.g.dart';

@riverpod
class RateList extends _$RateList {
  d(String s) => Decimal.parse(s);

  @override
  List<Rate> build() {
    changeRate();

    ref.onResume(() {
      print("RateListProvider onResume");
    });
    ref.onCancel(() {
      print("RateListProvider onCancel");
    });
    ref.onAddListener(() {
      print("RateListProvider onResume");
    });
    ref.onRemoveListener(() {
      print("RateListProvider onRemoveListener");
    });
    ref.onDispose(() {
      print("RateListProvider onDispose");
    });

    return ref.watch(rateDataProvider);
  }

  void changeRate() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      chageSetting();

      final rn = (Random().nextDouble() - 0.5) / 10;

      final temp = [
        for (final rate in state)
          if (Random().nextBool())
            rate.copyWith(
              diff: double.parse((d(rate.diff) + d(rn.toString()))
                          .toStringAsFixed(2)) >
                      0
                  // ignore: prefer_interpolation_to_compose_strings
                  ? "+" + (d(rate.diff) + d(rn.toString())).toStringAsFixed(2)
                  : (d(rate.diff) + d(rn.toString())).toStringAsFixed(2),
              offer: (d(rate.offer) + d(rn.toString())).toStringAsFixed(2),
            )
          else
            rate
      ];

      state = temp;
    });
  }

  void chageSetting() {
    final rateList = ref.watch(rateDataProvider);
    final rateSettingList = ref.watch(rateSettingListProvider);

    state = [
      for (int i = 0; i < rateSettingList.length; i++)
        if (rateSettingList[i].show)
          rateList
              .where((element) =>
                  element.meigaraId == rateSettingList[i].meigaraId)
              .first
    ];
  }
}
