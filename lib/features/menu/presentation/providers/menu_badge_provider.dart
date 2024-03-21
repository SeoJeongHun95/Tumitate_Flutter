import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'menu_badge_provider.g.dart';

@riverpod
class MenuBadge extends _$MenuBadge {
  @override
  int build() {
    return 0;
  }

  void addBadgeCount() {
    state += 1;
  }

  void removeBadgeCount() {
    if (state > 0) {
      state -= 1;
    }
  }
}
