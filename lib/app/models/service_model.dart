import 'package:cloud_firestore/cloud_firestore.dart';

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
  factory ServiceModel.fromMap(DocumentSnapshot doc){
    return ServiceModel(
      cpf:   doc["cpf"],
      name:  doc["name"],
      value: doc["value"],
      photo: doc["photo"]
    );
  }


}