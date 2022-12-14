import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/home/store/home_store.dart';

class ShowDialogUsuario extends StatefulWidget {
  final String nome;
  final String cpf;
  final String cep;
  final String logradouro;
  final String numero;
  final String complemento;
  final String bairro;
  final String cidade;
  final String uf;
  final String typeOcupation;
  final String typeService;
  final String experience;
  final HomeStore controller;


  @override
  _ShowDialogUsuarioState createState() => _ShowDialogUsuarioState();

  const ShowDialogUsuario({
    Key? key,
    required this.nome,
    required this.cep,
    required this.logradouro,
    required this.numero,
    required this.complemento,
    required this.bairro,
    required this.cidade,
    required this.uf,
    required this.typeOcupation,
    required this.typeService,
    required this.experience,
    required this.controller,
    required this.cpf,


  }) : super(key: key);
}

class _ShowDialogUsuarioState extends State<ShowDialogUsuario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    widget.controller.getServices(widget.cpf);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => widget.controller.getServicosValidator?
      Container(
          color: Colors.white,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 20),
          child:  const SpinKitWave(
            color: Color(0xFF0F3671),
            size: 40,
          )
      ):Container(
                width: 300,
                child: AlertDialog(
                  backgroundColor: Colors.blueAccent,
                  contentPadding: EdgeInsets.zero,
                  titlePadding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  content: Column(
                    children: <Widget>[
                      Container(
                        height: 45,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xff161621),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(width:49),
                                Text(
                                  widget.nome,
                                  style: GoogleFonts.openSans(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                                IconButton(
                                    splashColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    disabledColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    }),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 20, left: 20, top: 20),
                                child: Center(
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            child: CircleAvatar(
                                              radius: 55,
                                              child: CircleAvatar(
                                                radius: 200,
                                                child: Image.asset(
                                                    widget.typeOcupation == "Barbeiro"
                                                        ? 'lib/app/assets/images/barbeiro.png'
                                                        : widget.typeOcupation == "Cabelereiro"
                                                        ? 'lib/app/assets/images/cabeleireiro.png'
                                                        : widget.typeOcupation == "Esteticista"
                                                        ? 'lib/app/assets/images/esteticista.png'
                                                        : 'lib/app/assets/images/Manicure.png'),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 22, right: 22),
                                  child: Container(
                                    width: 400,
                                    height: MediaQuery.of(context).size.height,
                                    child: NotificationListener<
                                        OverscrollIndicatorNotification>(
                                      onNotification:
                                          (OverscrollIndicatorNotification
                                              overscroll) {
                                        overscroll.disallowGlow();
                                        return true; // or false
                                      },
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(height: 20,),
                                            Text("Nome: ${widget.nome}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text("Profissão: ${widget.typeOcupation}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text("Tempo de Experiência: ${widget.experience}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text("Atendimento: ${widget.typeService}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text("Endereço: ${widget.logradouro}, ${widget.numero}, ${widget.bairro}, ${widget.cidade} - ${widget.uf}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10),
                                            Text("Serviço Prestado: ${widget.controller.serviceModel.name}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 10,),
                                            Text("Valor: R\$ ${widget.controller.serviceModel.value}",
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.openSans(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 20,),
                                            Center(
                                              child: Container(
                                                height: 200,
                                                child: Image.network(widget.controller.serviceModel.photo),
                                              ),
                                            ),
                                            SizedBox(height: 20,),

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
