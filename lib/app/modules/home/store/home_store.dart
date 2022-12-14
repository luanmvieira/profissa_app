import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobx/mobx.dart';
import 'package:profissa_app/app/models/service_model.dart';
import 'package:profissa_app/app/models/user_model.dart';
import 'package:profissa_app/app/modules/home/repositories/db_home.dart';
import 'package:profissa_app/app/modules/login/repositories/db_login.dart';
import 'package:url_launcher/url_launcher.dart';

part 'home_store.g.dart';

class HomeStore = HomeStoreBase with _$HomeStore;
ConexaoFirebaseLogin _dbloginHome = ConexaoFirebaseLogin();


abstract class HomeStoreBase with Store {
  @observable
  bool logOutstate = false;
  @observable
  bool getValidator = false;
  @observable
  bool getServicosValidator = false;
  @observable
  List<UserModel> usuariosList = [];
  @observable
  ServiceModel serviceModel = ServiceModel();


  ConexaoFirebaseHome homeRepositories = ConexaoFirebaseHome();



  List<String> typeSort =[
    'Nome',
    'Tempo de Experiencia',
    'Tipo de Atendimento'
  ];

  @action
  Future<void> getFuncionarios() async {
    getValidator = true;
    usuariosList = await homeRepositories.getUserData();
    getValidator = false;
  }

  @action
  Future <void> getServices(String cpf) async {
    getServicosValidator = true;
    serviceModel = await homeRepositories.getServiceData(cpf);
    getServicosValidator = false;
  }

  @action
  Future<void> sortFuncionarios(String condicao) async {
    usuariosList = await homeRepositories.sort(condicao);
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