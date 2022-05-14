
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase
    with _$LoginStore;

abstract class _LoginStoreBase with Store {
  @action
  bool validatePasswordField(String password) {
    if (password != null && password.length != 0 && password.length >= 8)
      return true;

    return false;
  }
}