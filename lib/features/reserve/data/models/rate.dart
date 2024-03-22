import 'package:freezed_annotation/freezed_annotation.dart';

part 'rate.freezed.dart';

@freezed
class Rate with _$Rate {
  const factory Rate({
    required String meigaraId,
    required String meigaraMei,
    //高値
    required String high,
    //安値
    required String low,
    //現在値
    required String offer,
    //前日比
    required String diff,
  }) = _Rate;
}
