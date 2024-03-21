import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auto_login_switch_provider.g.dart';

@riverpod
class AutoLoginSwitch extends _$AutoLoginSwitch {
  @override
  bool build() {
    return false;
  }

  void setBool(bool value) {
    state = value;
  }
}
