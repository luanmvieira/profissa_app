import 'package:flutter_modular/flutter_modular.dart';
import 'package:profissa_app/app/modules/login/login_module.dart';
import 'package:profissa_app/app/modules/registration/registration_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  List<ModularRoute> get routes => [
  ModuleRoute('/', module: LoginModule()),
  ModuleRoute('/registration', module: RegistrationModule()),
  ];

}