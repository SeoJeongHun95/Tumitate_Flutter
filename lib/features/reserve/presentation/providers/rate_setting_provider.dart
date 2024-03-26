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

  void changeShow(String meigaraId) {
    state = [
      for (final temp in state)
        if (temp.meigaraId == meigaraId)
          temp.copyWith(show: !temp.show)
        else
          temp
    ];
  }

  void chageSequnce(int oldIndex, int newIndex) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final List<RateSetting> tempList = state;
    final RateSetting rs = tempList.removeAt(oldIndex);
    tempList.insert(newIndex, rs);
    state = tempList.toList();
  }
}
