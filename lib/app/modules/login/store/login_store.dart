import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';
import 'package:profissa_app/app/models/user_model.dart';
import 'package:profissa_app/app/modules/login/repositories/db_login.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {

  FirebaseAuth auth = FirebaseAuth.instance;
  ConexaoFirebaseLogin dblogin = ConexaoFirebaseLogin();

  @observable
  UserModel usuario = UserModel();
  @observable
  bool resultLogin = false;
  @observable
  bool progressLogin = false;


  @observable
  UserModel usuarioLogin = UserModel();
  final loginCPFController = TextEditingController();
  final loginPasswordController = TextEditingController();
  @observable
  String textResult = '';

  @action
  bool validatePasswordField(String password) {
    if (password != null && password.length != 0 && password.length >= 8)
      return true;

    return false;
  }

  @action
  Future RealizarLogin() async {
    progressLogin = true;
    usuarioLogin = await dblogin.getUserData(loginCPFController.text);
    usuario.email = usuarioLogin.email;
    usuario.password = loginPasswordController.text;
    resultLogin = await dblogin.logarUsuario(usuario);
    if (resultLogin != true) {
      Fluttertoast.showToast(msg: 'ERRO NO LOGIN');
    } else {
      Fluttertoast.showToast(msg: 'LOGIN EFETUADO COM SUCESSO');
    }
    progressLogin = false;
  }

  @action
  Future VerificarUserLogado()  async {
    User? user = auth.currentUser;
    if (user != null) {
      Modular.to.navigate('/home/');
    }
  }
}