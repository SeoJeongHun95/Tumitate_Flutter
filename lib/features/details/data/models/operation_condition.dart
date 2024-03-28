import 'package:freezed_annotation/freezed_annotation.dart';

part 'operation_condition.freezed.dart';

@freezed
class OperationCondition with _$OperationCondition {
  const factory OperationCondition({
    required String id,
    required String kanjiMei,
    //購入残高 外貨
    required String maisuu,
    //購入残高 円
    required String kansanMaisuu,
    //時間評価価格　円
    required String jikaHyoukagaku,
    //取引損益　円
    required String torihikiSoneki,
    //効率
    required String leverage,
    //評価価格
    required String bid,
    //平均価格
    required String seirituSP,
    //スワップポイント
    required String swapPoint,
    //取引必要証拠金
    required String hituyouSyoukokin,
  }) = _OperationCondition;
}
