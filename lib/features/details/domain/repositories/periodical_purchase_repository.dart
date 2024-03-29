import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/periodical_purchase.dart';
import '../../data/repositories/periodical_purchase_local.dart';

part 'periodical_purchase_repository.g.dart';

@Riverpod(keepAlive: true)
List<PeriodicalPurchase> periodicalPurchasesRepository(
    PeriodicalPurchasesRepositoryRef ref) {
  return periodicalPurchaseLocalData;
}
