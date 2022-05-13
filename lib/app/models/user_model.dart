import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String username;
  final String email;
  final String phone;
  final String photo;
  final String password;
  final String passwordConfirm;
  final bool admin;
  String activeSchedule;

  UserModel({
    required this.id,
    required this.username,
    required this.email,
    required this.phone,
    required this.photo,
    required this.password,
    required this.passwordConfirm,
    required this.admin,
    required this.activeSchedule
  });

  factory UserModel.fromDocument(DocumentSnapshot doc) {
    return UserModel(
      id: doc.id,
      email: doc['email'],
      username: doc['nome'],
      phone: doc['telefone'],
      photo: doc['fotoPerfil'],
      admin: doc['administrador'],
      activeSchedule: doc['agendamentoAtivo'],
      password: '',
      passwordConfirm: '',
    );
  }
}
