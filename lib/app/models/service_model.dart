class ServiceModel{
  String cpf;
  String name;
  String value;
  String photo;

  ServiceModel({
    this.cpf = '',
    this.name = '',
    this.value = '',
    this.photo = ''
  });
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "cpf"   : this.cpf,
      "name"  : this.name,
      "value" : this.value,
      "photo" : this.photo
    };
    return map;
  }
  factory ServiceModel.fromMap(Map<String, dynamic> dados){
    return ServiceModel(
      cpf:   dados["cpf"],
      name:  dados["name"],
      value: dados["value"],
      photo: dados["photo"]
    );
  }


}