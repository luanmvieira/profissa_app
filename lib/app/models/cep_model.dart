class CepModel{
  String? logradouro = "" ;
  String? complemento = "" ;
  String? bairro = "" ;
  String? localidade = "" ;
  String? uf = "" ;

  CepModel({
    this.logradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
});
  factory CepModel.fromJson(Map<String,dynamic>dados){
    return CepModel(
      logradouro   : dados["logradouro"],
      complemento  : dados["complemento"],
      bairro       : dados["bairro"],
      localidade   : dados["localidade"],
      uf           : dados["uf"],
    );
  }


}