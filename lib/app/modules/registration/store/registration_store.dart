import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:profissa_app/app/models/service_model.dart';
import 'package:profissa_app/app/models/user_model.dart';
import 'package:profissa_app/app/modules/registration/repositories/db_registration.dart';
import 'package:profissa_app/app/modules/registration/repositories/db_service.dart';

part 'registration_store.g.dart';

class RegistrationStore = _RegistrationStoreBase with _$RegistrationStore;
abstract class _RegistrationStoreBase with Store {

  FirebaseAuth auth = FirebaseAuth.instance;
  ConexaoFirebaseCadastro dbCadastro = ConexaoFirebaseCadastro();
  ConexaoFirebaseCadastroService dbService = ConexaoFirebaseCadastroService();
  FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

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
  String ocupationController = '';
  String experienceController = '';
  String serviceController = '';
  final professionalCepController = TextEditingController();
  final professionalLogradouroController = TextEditingController();
  final professionalNumeroController = TextEditingController();
  final professionalComplementoController = TextEditingController();
  final professionalBairroController = TextEditingController();
  final professionalCidadeController = TextEditingController();
  final professionalUfController = TextEditingController();
  //Service Page
  final nameServiceController = TextEditingController();
  final valueServiceController = TextEditingController();
  @observable
  String photoServiceController = '';
  @observable
  XFile? image;
  @observable
  bool uploading = false;


  @observable
  UserModel usuario = UserModel();
  @observable
  ServiceModel service = ServiceModel();

  @observable
  bool resultUsuario = false;
  @observable
  bool resulService = false;
  @observable
  String textResult = '';


  @observable
  bool isAthome = false;
  @observable
  bool isNewAddress = false;


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

  List<String> typeServiceLocal =[
    'Manter Endereço',
    'Cadastrar Novo Endereço'
  ];


  @action
  setOcupation(String ocupation){
    ocupationController = ocupation;
  }
  @action
  setExperience(String experience){
    experienceController = experience;
  }

  @action
  setService(String service){
    serviceController = service;
  }

  @action
  void changeService(bool value){
    isAthome = value;
  }
  @action
  void changeServiceLocal(bool value){
    isNewAddress = value;
  }

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
    if (numero != null && numero.length != 0 && numero.length >= 1) return true;

    return false;
  }
  bool validateUfField(String uf) {
    if (uf != null && uf.length != 0 && uf.length > 1) return true;

    return false;
  }
  bool validateServiceField(String uf) {
    if (uf != null && uf.length != 0 && uf.length > 3) return true;

    return false;
  }
  bool validateValueField(String uf) {
    if (uf != null && uf.length != 0 && uf.length >= 1) return true;

    return false;
  }

  @action
  Future<XFile?> getImage() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    return image;
  }
  ///Ação para realizar o upload no storage
  @action
  Future<UploadTask> upload(String path) async {
    File file = File(path);
    try {
      String ref = "usuarios/servicos/${Timestamp.now().millisecondsSinceEpoch}";
      return _firebaseStorage.ref(ref).putFile(file);
    } on FirebaseException catch (e) {
      throw Exception('Erro no upload: ${e.code}');
    }
  }
  ///Ação que junta as duas funções acima e gera o link da imagem para exibição
  @action
  pickAndUploadImage() async {
    XFile? file = await getImage();
    if (file != null) {
      UploadTask task = await upload(file.path);
      task.snapshotEvents.listen((TaskSnapshot snapshot) async {
        if (snapshot.state == TaskState.running) {
          uploading = true;
        } else if (snapshot.state == TaskState.success) {
          photoServiceController = await snapshot.ref.getDownloadURL();
          uploading = false;
        }
      });
    }
  }
  @action
  CadastrarUser () async {
    dynamic resultCadastro = false;
    if(isNewAddress==false){
      usuario.username = nameController.text;
      usuario.email = emailController.text;
      usuario.password = senhaController.text;
      usuario.cep  = cepController.text;
      usuario.logradouro = logradouroController.text;
      usuario.numero = numeroController.text;
      usuario.complemento = complementoController.text;
      usuario.bairro = bairroController.text;
      usuario.cidade = cidadeController.text;
      usuario.uf = ufController.text;
      usuario.cpf = cpfController.text;
      usuario.typeService = serviceController;
      usuario.typeOcupation = ocupationController;
      usuario.experience = experienceController;
      usuario.professionalCep = cepController.text;
      usuario.professionalLogradouro = logradouroController.text;
      usuario.professionalNumero = numeroController.text;
      usuario.professionalComplemento = complementoController.text;
      usuario.professionalBairro = bairroController.text;
      usuario.professionalCidade = cidadeController.text;
      usuario.professionalUf = ufController.text;
    }else
      if(isNewAddress==true){
        usuario.username = nameController.text;
        usuario.email = emailController.text;
        usuario.password = senhaController.text;
        usuario.cep  = cepController.text;
        usuario.logradouro = logradouroController.text;
        usuario.numero = numeroController.text;
        usuario.complemento = complementoController.text;
        usuario.bairro = bairroController.text;
        usuario.cidade = cidadeController.text;
        usuario.uf = ufController.text;
        usuario.cpf = cpfController.text;
        usuario.typeService = serviceController;
        usuario.typeOcupation = ocupationController;
        usuario.experience = experienceController;
        usuario.professionalCep = professionalCepController.text;
        usuario.professionalLogradouro = professionalLogradouroController.text;
        usuario.professionalNumero = professionalNumeroController.text;
        usuario.professionalComplemento = professionalComplementoController.text;
        usuario.professionalBairro = professionalBairroController.text;
        usuario.professionalCidade = professionalCidadeController.text;
        usuario.professionalUf = professionalUfController.text;
      }

      resultCadastro = await dbCadastro.CadastraUsuario(usuario);
    if (resultCadastro != true) {
      print("----------Error ao criar User");
      resultUsuario = false;
      textResult =
      "Alerta!!!\n\nErro ao realizar cadastro, verifique os dados e tente novamente!\n";
    } else {
      Fluttertoast.showToast(msg:'CADASTRO EFETUADO COM SUCESSO');
      print("novo usuario criado com sucesso:" + usuario.email.toString());
      print("---------Sucesso");
      resultUsuario = true;
      textResult = "";
    }
  }
  @action
  CadastrarService() async {
    dynamic resultService = false;
    service.cpf = cpfController.text;
    service.name = nameServiceController.text;
    service.value = valueServiceController.text;
    service.photo = photoServiceController;
    resultService = await dbService.CadastraService(service);
    if (resultService != true) {
      print("----------Error ao criar User");
      resulService = false;
      textResult = "Alerta!!!\n\nErro ao realizar cadastro, verifique os dados e tente novamente!\n";
    } else {
      Fluttertoast.showToast(msg:'CADASTRO EFETUADO COM SUCESSO');
      print("novo serviço criado com sucesso:" + service.name);
      print("---------Sucesso");
      resulService = true;
      textResult = "";
    }
  }




  @action
  retornarInfosCep(String cep,String page) async {
    print("Entrou na func");

    final getCep = await http.get(
      Uri.parse("https://viacep.com.br/ws/$cep/json/"),
    );
    print(getCep.statusCode);
    if (getCep.statusCode == 200 && page=="address") {
      print("cod 200");
      var retornoCep = json.decode(getCep.body);
      logradouroController.text = retornoCep['logradouro'];
      bairroController.text = retornoCep['bairro'];
      cidadeController.text = retornoCep['localidade'];
      ufController.text = retornoCep['uf'];
      Fluttertoast.showToast(msg:'CEP ENCONTRADO');
      print(logradouroController.text);
    }else
    if (getCep.statusCode == 200 && page=="professional") {
      print("cod 200");
      var retornoCep = json.decode(getCep.body);
      professionalLogradouroController.text = retornoCep['logradouro'];
      professionalBairroController.text = retornoCep['bairro'];
      professionalCidadeController.text = retornoCep['localidade'];
      professionalUfController.text = retornoCep['uf'];
      Fluttertoast.showToast(msg:'CEP ENCONTRADO');
      print(logradouroController.text);
    }else
    if (getCep.statusCode == 400) {
      Fluttertoast.showToast(msg:'CEP INVÁLIDO');
    }
    print("Terminou a func");

  }
}