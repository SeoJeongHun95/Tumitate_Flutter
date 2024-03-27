import 'dart:async';
import 'dart:math';

import 'package:decimal/decimal.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/rate.dart';
import '../../data/models/rate_setting.dart';
import '../../domain/repositories/rates_repository.dart';

part 'rate_list_provider.g.dart';

// ref.onResume(() {
//   print("RateListProvider onResume");
// });
// ref.onCancel(() {
//   print("RateListProvider onCancel");
// });
// ref.onAddListener(() {
//   print("RateListProvider onResume");
// });
// ref.onRemoveListener(() {
//   print("RateListProvider onRemoveListener");
// });
// ref.onDispose(() {
//   print("RateListProvider onDispose");
// });

@riverpod
class RateList extends _$RateList {
  d(String s) => Decimal.parse(s);

  @override
  List<Rate> build() {
    changeRate();
    return ref.watch(rateDataProvider);
  }

  void chageSetting({required List<RateSetting> changeList}) {
    final rateSettingList = changeList;
    final newState = ref.read(rateDataProvider);

    final result = [
      for (final rs in rateSettingList)
        if (rs.show)
          for (final st in newState)
            if (st.meigaraId == rs.meigaraId) st
    ];

    state = result;
  }

  //걍 API대용
  void changeRate() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
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
}
