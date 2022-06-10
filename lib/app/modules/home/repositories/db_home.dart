import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:profissa_app/app/models/user_model.dart';

class ConexaoFirebaseHome{

  FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  List<UserModel> _userList = [];

  Future<List<UserModel>> getUserData() async {

    QuerySnapshot queryFuncionarios = await _db.collection("usuarios").get();

    for (DocumentSnapshot _doc in queryFuncionarios.docs) {
      UserModel _user = UserModel.fromMap(_doc);
      _userList.add(_user);
    }
    return _userList;
  }

  Future sort(String condicao) async {
    if(condicao == "Nome"){
      _userList.sort((UserModel a , UserModel b)=> a.username.compareTo(b.username));
    }else
      if(condicao == "Tempo de Experiencia"){
        _userList.sort((UserModel a , UserModel b)=> b.experience.compareTo(a.experience));
      }else
      if(condicao == "Tipo de Atendimento"){
        _userList.sort((UserModel a , UserModel b)=> a.typeService.compareTo(b.typeService));
      }
    return _userList;
  }





}