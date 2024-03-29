import 'package:freezed_annotation/freezed_annotation.dart';

part 'periodical_purchase.freezed.dart';

@freezed
class PeriodicalPurchase with _$PeriodicalPurchase {
  const factory PeriodicalPurchase({
    //국가코드
    required String meigaraId,
    //메가라명
    required String meigaraKanji,
    //레버리지코스
    required String leverageCourse,
    //레버리지
    required String leverage,
    //구입빈도
    required String hindo,
    //월간구입수량
    required String maisuu,
    //상황
    required int enable,
    //구입방법
    required String settingType,
    //구입예정시간
    required String timeStamp,
    //신청번호
    required String id,
  }) = _PeriodicalPurchase;
}
