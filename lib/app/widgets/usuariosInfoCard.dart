import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsuariosInfoCard extends StatelessWidget {
  final String nome;
  final String bairro;
  final String typeOcupation;
  final String typeService;
  final String experience;

  const UsuariosInfoCard({Key? key,
    required this.nome,
    required this.bairro,
    required this.typeOcupation,
    required this.typeService,
    required this.experience}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 100,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Container(width: 3),
            ),
            Container(
              child: CircleAvatar(
                radius: 45,
                child: CircleAvatar(
                  radius: 200,
                 child: Image.asset(
                     typeOcupation == "Barbeiro"
                     ? 'lib/app/assets/images/barbeiro.png'
                     : typeOcupation == "Cabelereiro"
                     ? 'lib/app/assets/images/cabeleireiro.png'
                     : typeOcupation == "Esteticista"
                     ? 'lib/app/assets/images/esteticista.png'
                     : 'lib/app/assets/images/Manicure.png'),
                ),
              ),
            ),
            SizedBox(
              child: Container(width: 10),
            ),
            Container(
              width: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Nome: $nome",
                      textAlign: TextAlign.center,
                    style: GoogleFonts.openSans(
                        fontSize: 13,
                  color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                  Text("Bairro: $bairro",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )
                  ),
                  Text("Profissão: $typeOcupation",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        fontWeight: FontWeight.bold,)
                  ),
                  Text("Tempo de Experiencia: $experience",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,)
                  ),
                  Text("Tipo de Atendimento: $typeService",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.openSans(
                          fontSize: 13,
                          color: Colors.white,
                        fontWeight: FontWeight.bold,)
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
