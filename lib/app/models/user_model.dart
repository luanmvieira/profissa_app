
class UserModel {
  final String username;
  final String email;
  final String password;
  final String cep;
  final String logradouro;
  final String numero;
  final String complemento;
  final String bairro;
  final String cidade;
  final String uf;
  final String cpf;
  final String typeService;
  final String typeOcupation;
  final String experience;
  final String professionalCep;
  final String professionalLogradouro;
  final String professionalNumero;
  final String professionalComplemento;
  final String professionalBairro;
  final String professionalCidade;
  final String professionalUf;

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
      "email"                   : this.password,
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
      "expericence"             : this.experience,
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

  factory UserModel.fromMap(Map<String, dynamic>  doc) {
    return UserModel(
      username: doc['nome'],
      email: doc['email'],
      cep: doc['cep'],
      logradouro: doc['logradouto'],
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
