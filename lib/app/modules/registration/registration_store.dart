import 'package:mobx/mobx.dart';

part 'registration_store.g.dart';

class RegistrationStore = _RegistrationStoreBase with _$RegistrationStore;
abstract class _RegistrationStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}