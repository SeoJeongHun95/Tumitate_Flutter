import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate_setting.freezed.dart';

@freezed
class RateSetting with _$RateSetting {
  const factory RateSetting({
    required String meigaraId,
    required String meigaraMei,
    @Default(true) bool show,
  }) = _RateSetting;
}
