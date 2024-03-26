import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/rate_setting.dart';
import '../../data/repositories/rate_setting_local.dart';

part 'rate_setting_repository.g.dart';

@Riverpod(keepAlive: true)
List<RateSetting> rateSettingRepository(RateSettingRepositoryRef ref) {
  return rateSettingList;
}
