import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'id_save_check_provider.g.dart';

@riverpod
class IdSaveCheck extends _$IdSaveCheck {
  @override
  bool build() {
    return false;
  }

  void setBool(bool value) {
    state = value;
  }
}
