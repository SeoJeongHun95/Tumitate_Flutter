import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_state_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  bool build() {
    return false;
  }

  void login() {
    state = true;
  }

  void logout() {
    state = false;
  }
}
