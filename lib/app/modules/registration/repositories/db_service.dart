import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:profissa_app/app/models/service_model.dart';
import 'package:profissa_app/app/models/user_model.dart';

class ConexaoFirebaseCadastroService {
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future CadastraService(UserModel user, ServiceModel service) async {
    try {
      await db.collection("servicos")
          .doc(user.cpf)
          .set(service.toMap());
      return true;
    } catch (error) {
      print("erro ao cadastrar serviço" + error.toString());
    }
  }

}