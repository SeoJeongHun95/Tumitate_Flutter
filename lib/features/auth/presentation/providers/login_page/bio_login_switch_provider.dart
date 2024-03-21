import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bio_login_switch_provider.g.dart';

@riverpod
class BioLoginSwitch extends _$BioLoginSwitch {
  @override
  bool build() {
    return false;
  }

  void setBool(bool value) {
    state = value;
  }
}
