import 'package:profissa_app/app/modules/registration/registration_Page.dart';
import 'package:profissa_app/app/modules/registration/registration_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RegistrationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegistrationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RegistrationPage()),
  ];
}
