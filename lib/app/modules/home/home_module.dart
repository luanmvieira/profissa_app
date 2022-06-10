import 'package:flutter_modular/flutter_modular.dart';
import 'package:profissa_app/app/modules/home/views/home_page.dart';
import 'package:profissa_app/app/modules/home/store/home_store.dart';



 
class HomeModule extends Module {
  @override
  final List<Bind> binds = [
 Bind.lazySingleton((i) => HomeStore()),
 ];

 @override
 final List<ModularRoute> routes = [
   ChildRoute(
     '/',
     child: (_, args) => HomePage(),
   ), ];
}