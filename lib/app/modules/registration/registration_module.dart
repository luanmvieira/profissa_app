import 'package:profissa_app/app/modules/registration/views/address_page.dart';
import 'package:profissa_app/app/modules/registration/views/personal_page.dart';
import 'package:profissa_app/app/modules/registration/store/registration_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:profissa_app/app/modules/registration/views/professional_page.dart';

class RegistrationModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegistrationStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PersonalPage()),
    ChildRoute('/address', child: (_, args) => AddressPage()),
    ChildRoute('/professional', child: (_, args) => ProfessionalPage()),
  ];
}
