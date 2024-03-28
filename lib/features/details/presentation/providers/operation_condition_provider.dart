import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/operation_condition.dart';
import '../../domain/repositories/operation_condition_repository.dart';

part 'operation_condition_provider.g.dart';

@riverpod
class OperationConditions extends _$OperationConditions {
  @override
  List<OperationCondition> build() {
    return ref.watch(operationConditionsRepositoryProvider);
  }

  void remove(String id) {
    state = [
      for (final operationConditionItem in state)
        if (operationConditionItem.id != id) operationConditionItem
    ];
  }

  void reset() {
    state = ref.watch(operationConditionsRepositoryProvider);
  }
}
