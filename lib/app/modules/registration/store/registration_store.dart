import 'dart:convert';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:mobx/mobx.dart';

part 'registration_store.g.dart';

class RegistrationStore = _RegistrationStoreBase with _$RegistrationStore;
abstract class _RegistrationStoreBase with Store {

  //Personal Page
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final senhaController = TextEditingController();
  //Address Page
  final cepController = TextEditingController();
  final logradouroController = TextEditingController();
  final numeroController = TextEditingController();
  final complementoController = TextEditingController();
  final bairroController = TextEditingController();
  final cidadeController = TextEditingController();
  final ufController = TextEditingController();
  //Professional Page
  final cpfController = TextEditingController();

  @observable
  List<String> typeOcupation = [
    'Barbeiro',
    'Cabelereiro',
    'Esteticista',
    'Nail Designer / Manuicure e Pedicure'
  ];

  List<String> timeExperience = [
    'Até 06 meses',
    '06 meses a 01 ano',
    '01 a 03 anos',
    '03 anos ou mais'
  ];

  List<String> typeService = [
    'A domicílio',
    'Local próprio'
  ];



  bool validateEmailField(String email) {
    return EmailValidator.validate(email);
  }

  bool validatePasswordField(String password) {
    if (password != null && password.length != 0 && password.length >= 8)
      return true;

    return false;
  }

  bool validateNameField(String name) {
    if (name != null && name.length != 0 && name.length > 6) return true;

    return false;
  }

  bool validateCepField(String cep) {
    if (cep != null && cep.length != 0 && cep.length > 7) return true;

    return false;
  }

  bool validateLogradouroField(String logradouro) {
    if (logradouro != null && logradouro.length != 0 && logradouro.length > 3) return true;

    return false;
  }

  bool validateNumeroField(String numero) {
    if (numero != null && numero.length != 0 && numero.length > 1) return true;

    return false;
  }
  bool validateUfField(String uf) {
    if (uf != null && uf.length != 0 && uf.length > 1) return true;

    return false;
  }
  @action
  retornarInfosCep(String cep) async {
    print("Entrou na func");

    final getCep = await http.get(
      Uri.parse("https://viacep.com.br/ws/$cep/json/"),
    );
    print(getCep.statusCode);
    if (getCep.statusCode == 200) {
      print("cod 200");
      var retornoCep = json.decode(getCep.body);
      logradouroController.text = retornoCep['logradouro'];
      bairroController.text = retornoCep['bairro'];
      cidadeController.text = retornoCep['localidade'];
      ufController.text = retornoCep['uf'];
      Fluttertoast.showToast(msg:'CEP ENCONTRADO');
      print(logradouroController.text);
    }else
    if (getCep.statusCode == 400) {
      Fluttertoast.showToast(msg:'CEP INVÁLIDO');
    }
    print("Terminou a func");

  }
}