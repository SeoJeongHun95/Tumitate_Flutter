import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pw_save_check_provider.g.dart';

@riverpod
class PwSaveCheck extends _$PwSaveCheck {
  @override
  bool build() {
    return false;
  }

  void setBool(bool value) {
    state = value;
  }
}
