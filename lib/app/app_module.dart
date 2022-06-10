import 'package:flutter_modular/flutter_modular.dart';
import 'package:profissa_app/app/modules/home/store/home_store.dart';
import 'package:profissa_app/app/modules/login/login_module.dart';
import 'package:profissa_app/app/modules/login/store/login_store.dart';
import 'package:profissa_app/app/modules/registration/registration_module.dart';
import 'package:profissa_app/app/modules/registration/store/registration_store.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegistrationStore()),
    Bind.lazySingleton((i) => LoginStore()),
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  List<ModularRoute> get routes => [
  ModuleRoute('/', module: LoginModule()),
  ModuleRoute('/registration', module: RegistrationModule()),
  ModuleRoute('/home', module: HomeModule()),
  ];

}