import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/rate_setting.dart';
import '../../domain/repositories/rate_setting_repository.dart';

part 'rate_setting_provider.g.dart';

@Riverpod(keepAlive: true)
class RateSettingList extends _$RateSettingList {
  @override
  List<RateSetting> build() {
    return ref.watch(rateSettingRepositoryProvider);
  }

  void changeShow(bool bool, String meigaraId) {
    state = [
      for (final temp in state)
        if (meigaraId == temp.meigaraId)
          RateSetting(
              meigaraId: meigaraId, meigaraMei: temp.meigaraMei, show: bool)
        else
          temp
    ];
  }

  void chageListSetting(List<RateSetting> list) {
    state = list;
  }
}
