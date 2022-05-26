class ServiceModel{
  String name;
  String value;
  String photo;

  ServiceModel({
    this.name = '',
    this.value = '',
    this.photo = ''
  });
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      "name"  : this.name,
      "value" : this.value,
      "photo" : this.photo
    };
    return map;
  }
  factory ServiceModel.fromMap(Map<String, dynamic> dados){
    return ServiceModel(
      name: dados["name"],
      value: dados["value"],
      photo: dados["photo"]
    );
  }


}