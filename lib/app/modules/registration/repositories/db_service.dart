import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:profissa_app/app/models/service_model.dart';

class ConexaoFirebaseCadastroService {
  FirebaseFirestore db = FirebaseFirestore.instance;

  Future CadastraService(ServiceModel service) async {
    try {
      await db.collection("servicos").doc().set(service.toMap());
      return true;
    } catch (error) {
      print("erro ao cadastrar serviço" + error.toString());
    }
  }

}