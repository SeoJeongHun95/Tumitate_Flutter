import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/operation_condition.dart';
import '../../data/repositories/operation_condition_local.dart';

part 'operation_condition_repository.g.dart';

@Riverpod(keepAlive: true)
List<OperationCondition> operationConditionsRepository(
    OperationConditionsRepositoryRef ref) {
  return operationConditionsLocalData;
}
