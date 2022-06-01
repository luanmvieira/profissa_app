import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:profissa_app/app/models/user_model.dart';

class ConexaoFirebaseLogin {
  FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<UserModel> getUserData(String cpf) async {
    UserModel _user = UserModel();
    QuerySnapshot _userQuery = await _db.collection("usuarios").where("cpf", isEqualTo: cpf).get();
    if(_userQuery.docs.isNotEmpty){
      print("não é vazio");
      _user = UserModel.fromMap(_userQuery.docs.first);
      print("carregou o usermodel");
    }
    return _user;
  }

  Future logarUsuario(UserModel user) async {
    try {
      await auth.signInWithEmailAndPassword(
          email: user.email, password: user.password);
      return true;
    } catch (error) {
      print("Logar usuario: erro " + error.toString());
    }
  }
}
