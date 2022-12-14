import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:profissa_app/app/models/user_model.dart';
import 'package:profissa_app/app/modules/home/store/home_store.dart';
import 'package:profissa_app/app/widgets/showdialog_usuario.dart';
import 'package:profissa_app/app/widgets/showdialogfilter.dart';
import 'package:profissa_app/app/widgets/usuariosInfoCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    controller.getFuncionarios();
    controller.sortFuncionarios("Nome");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profissa App - Profissionais'),
          centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return ShowDialogFilter(
                      controller: controller,
                    );
                  },
                );
              },
              icon: Icon(Icons.filter_list),
          )
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Text('Sair'),
              onTap: () {
                store.logOut();
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Observer(
          builder: (_) => controller.getValidator
              ? const SpinKitWave(
                  color: Colors.black,
                  size: 40,
                )
              : Column(
                  children: [
                    Expanded(
                      child: Observer(
                        builder: (_) => ListView.builder(
                            itemCount: controller.usuariosList.length,
                            itemBuilder: (context, index) {
                              UserModel _usuario =
                                  controller.usuariosList[index];
                              return Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: GestureDetector(
                                  child: UsuariosInfoCard(
                                    bairro: _usuario.professionalBairro,
                                    nome: _usuario.username,
                                    typeOcupation: _usuario.typeOcupation,
                                    typeService: _usuario.typeService,
                                    experience: _usuario.experience,
                                  ),
                                  onTap: (){
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context){
                                          return ShowDialogUsuario(
                                            nome: _usuario.username,
                                            cpf: _usuario.cpf,
                                            bairro: _usuario.professionalBairro,
                                            uf: _usuario.professionalUf,
                                            cep: _usuario.professionalCep,
                                            cidade: _usuario.professionalCidade,
                                            complemento: _usuario.professionalComplemento,
                                            logradouro: _usuario.professionalLogradouro,
                                            numero: _usuario.professionalNumero,
                                            typeOcupation: _usuario.typeOcupation,
                                            typeService: _usuario.typeService,
                                            experience: _usuario.experience,
                                            controller: controller,

                                          );
                                        });
                                  },
                                ),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
