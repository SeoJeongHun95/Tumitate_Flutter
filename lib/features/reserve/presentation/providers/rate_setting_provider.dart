import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/rate_setting.dart';

part 'rate_setting_provider.g.dart';

final List<RateSetting> _rateSettingList = [
  const RateSetting(
    meigaraId: "USA",
    meigaraMei: "米ドル",
    show: true,
  ),
  const RateSetting(
    meigaraId: "GBR",
    meigaraMei: "英ポンド",
    show: true,
  ),
  const RateSetting(
    meigaraId: "AUS",
    meigaraMei: "豪ドル",
    show: true,
  ),
  const RateSetting(
    meigaraId: "NZL",
    meigaraMei: "NZドル",
    show: true,
  ),
  const RateSetting(
    meigaraId: "CAN",
    meigaraMei: "カナダドル",
    show: true,
  ),
  const RateSetting(
    meigaraId: "CHN",
    meigaraMei: "人民元",
    show: true,
  ),
  const RateSetting(
    meigaraId: "ZAF",
    meigaraMei: "南アランド",
    show: true,
  ),
  const RateSetting(
    meigaraId: "TUR",
    meigaraMei: "トルコリラ",
    show: true,
  ),
  const RateSetting(
    meigaraId: "HKG",
    meigaraMei: "香港ドル",
    show: true,
  ),
  const RateSetting(
    meigaraId: "MEX",
    meigaraMei: "メキシコペソ",
    show: true,
  ),
];

@Riverpod(keepAlive: true)
class RateSettingList extends _$RateSettingList {
  @override
  List<RateSetting> build() {
    return _rateSettingList;
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
    print(list);
    state = list;
  }
}
