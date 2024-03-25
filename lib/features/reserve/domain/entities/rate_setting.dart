import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/rate.dart';

part 'rate_setting.freezed.dart';

@freezed
class RateSetting with _$RateSetting {
  const factory RateSetting({
    required Rate rate,
    @Default(true) bool show,
  }) = _RateSetting;
}
