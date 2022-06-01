
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String username;
  String email;
  String password;
  String cep;
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String cidade;
  String uf;
  String cpf;
  String typeService;
  String typeOcupation;
  String experience;
  String professionalCep;
  String professionalLogradouro;
  String professionalNumero;
  String professionalComplemento;
  String professionalBairro;
  String professionalCidade;
  String professionalUf;

  UserModel({
    this.username = '',
    this.password = '',
    this.email = '',
    this.cep = '',
    this.logradouro = '',
    this.numero = '',
    this.complemento = '',
    this.bairro = '',
    this.cidade = '',
    this.uf = '',
    this.cpf = '',
    this.typeService = '',
    this.typeOcupation = '',
    this.experience = '',
    this.professionalCep = '',
    this.professionalLogradouro = '',
    this.professionalNumero = '',
    this.professionalComplemento = '',
    this.professionalBairro = '',
    this.professionalCidade = '',
    this.professionalUf = ''
}
      );

  Map<String, dynamic> toMap(){
    Map<String, dynamic> map = {
      "nome"                    : this.username,
      "email"                   : this.email,
      "cep"                     : this.cep,
      "logradouro"              : this.logradouro,
      "numero"                  : this.numero,
      "complemento"             : this.complemento,
      "bairro"                  : this.bairro,
      "cidade"                  : this.cidade,
      "uf"                      : this.uf,
      "cpf"                     : this.cpf,
      "typeService"             : this.typeService,
      "typeOcupation"           : this.typeOcupation,
      "experience"             : this.experience,
      "professionalCep"         : this.professionalCep,
      "professionalLogradouro"  : this.professionalLogradouro,
      "professionalNumero"      : this.professionalNumero,
      "professionalComplemento" : this.professionalComplemento,
      "professionalBairro"      : this.professionalBairro,
      "professionalCidade"      : this.professionalCidade,
      "professionalUf"          : this.professionalUf,

    };
    return map;

  }

  factory UserModel.fromMap(DocumentSnapshot doc) {
    return UserModel(
      username: doc['nome'],
      email: doc['email'],
      cep: doc['cep'],
      logradouro: doc['logradouro'],
      numero: doc['numero'],
      complemento: doc['complemento'],
      bairro: doc['bairro'],
      cidade: doc['cidade'],
      uf: doc['uf'],
      cpf: doc['cpf'],
      typeService: doc['typeService'],
      typeOcupation: doc['typeOcupation'],
      experience: doc['experience'],
      professionalCep: doc['professionalCep'],
      professionalLogradouro: doc['professionalLogradouro'],
      professionalNumero: doc['professionalNumero'],
      professionalComplemento: doc['professionalComplemento'],
      professionalBairro: doc['professionalBairro'],
      professionalCidade: doc['professionalCidade'],
      professionalUf: doc['professionalUf']
    );
  }
}
