import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/rate.dart';
import '../../data/repositories/rate_data_local.dart';

part 'rates_repository.g.dart';

@Riverpod(keepAlive: true)
List<Rate> rateData(RateDataRef ref) {
  return rates;
}
