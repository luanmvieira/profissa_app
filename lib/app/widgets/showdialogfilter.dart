import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/home/store/home_store.dart';


class ShowDialogFilter extends StatefulWidget {
  final HomeStore controller;

  const ShowDialogFilter({Key ?key, required this.controller}) : super(key: key);

  @override
  _ShowDialogFilterState createState() => _ShowDialogFilterState();
}

class _ShowDialogFilterState extends State<ShowDialogFilter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        backgroundColor: Colors.white,
        contentPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        content: SingleChildScrollView(
          child: Container(
            width: 250,
            height: 450,
            child: Column(
              children: <Widget>[
                Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(width: 30,),
                          Text(
                            "Ordenação",
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          GestureDetector(
                            child:Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 25,
                      ),
                      Container(
                        width: 250,
                        child: TextButton(
                          onPressed: () async{
                            Modular.to.pop();
                            await widget.controller.sortFuncionarios("Nome");
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(25),
                            backgroundColor: Colors.blueAccent,
                          ),
                          child: Text(
                            "Nome",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                      ),
                      Container(
                        width: 250,
                        child: TextButton(
                          onPressed: () async{
                            Modular.to.pop();
                            await widget.controller.sortFuncionarios("Tempo de Experiencia");
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(25),
                            backgroundColor: Colors.blueAccent,
                          ),
                          child: Text(
                            "Tempo de Experiencia",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 25,
                      ),
                      Container(
                        width: 250,
                        child: TextButton(
                          onPressed: () async{
                            Modular.to.pop();
                            await widget.controller.sortFuncionarios("Tipo de Atendimento");
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.all(25),
                            backgroundColor: Colors.blueAccent,
                          ),
                          child: Text(
                            "Tipo de Atendimento",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                              //color:Color.fromRGBO(179, 57,117,1),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}