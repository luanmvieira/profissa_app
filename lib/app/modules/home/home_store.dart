import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';
import 'package:profissa_app/app/modules/login/repositories/db_login.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;
ConexaoFirebaseLogin _dbloginHome = ConexaoFirebaseLogin();

abstract class HomeStoreBase with Store {
  @observable
  int counter = 0;
  bool logOutstate = false;

  Future<void> increment() async {
    counter = counter + 1;
  }

  @action
  Future logOut() async {
    logOutstate = await _dbloginHome.logout();
    if(logOutstate == true){
      Modular.to.navigate("/");
      Fluttertoast.showToast(msg: 'LOGOUT EFETUADO COM SUCESSO');
    }else{
      Fluttertoast.showToast(msg: 'LOGOUT NÃO EFETUADO');
    }
  }
}