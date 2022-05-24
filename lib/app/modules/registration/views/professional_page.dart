import 'package:animate_do/animate_do.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/registration/store/registration_store.dart';
import 'package:flutter/material.dart';

import '../../../widgets/customCPFTextFormField.dart';

class ProfessionalPage extends StatefulWidget {
  const ProfessionalPage({Key? key}) : super(key: key);

  @override
  _ProfessionalPageState createState() => _ProfessionalPageState();
}

class _ProfessionalPageState extends ModularState<ProfessionalPage, RegistrationStore> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                            margin: const EdgeInsets.only(top: 5.0, left: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(8)),
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white70,
                                ))),
                      ),
                      Text(
                        "Cadastro",
                        style: GoogleFonts.montserrat(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(40.0),
                                    topLeft: Radius.circular(40.0),
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.person,
                                    size: 25.0,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      maxLines: 3,
                                      textAlign: TextAlign.justify,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 45,
                              color: Colors.grey,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.home_outlined,
                                    size: 20.0,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 45,
                              color: Colors.blueAccent,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.work,
                                    size: 20.0,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "Profissional",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              height: 45,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(40.0),
                                    topRight: Radius.circular(40.0),
                                  )),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.agriculture,
                                    size: 20.0,
                                  ),
                                  Flexible(
                                    child: Text(
                                      "",
                                      style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          CustomCPFTextFormField(
                            hintText: "CPF ou CNPJ",
                            controller: controller.cpfController,
                            fillColor: Colors.grey,
                            borderColor: Colors.black,
                            fontColor: Colors.black,
                            fontSize: 18,
                            type: TextInputType.number,
                          ),
                          const SizedBox(height: 15),

                          DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              alignLabelWithHint: true,
                              contentPadding:const EdgeInsets.fromLTRB(20, 18, 20, 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  width: 1.18,
                                  color: Color(0xff1a1919),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  width: 1.2,
                                  color: Colors.black,
                                ), //Color(0xff1a1919)
                              ),
                            ),
                            items: controller.typeOcupation
                                .map((typeocupation) {
                              return DropdownMenuItem(
                                  value: typeocupation,
                                  child: Text(
                                    typeocupation.toString(),
                                    overflow: TextOverflow.ellipsis,
                                  ));
                            }).toList(),
                            hint: const Text("Tipo de Ocupação"),
                            onChanged: (typeocupation) {

                            },
                            onTap: () => FocusScope.of(context).unfocus(),
                          ),
                          const SizedBox(height: 15),

                          DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              alignLabelWithHint: true,
                              contentPadding:const EdgeInsets.fromLTRB(20, 18, 20, 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  width: 1.18,
                                  color: Color(0xff1a1919),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  width: 1.2,
                                  color: Colors.black,
                                ), //Color(0xff1a1919)
                              ),
                            ),
                            items: controller.timeExperience
                                .map((timeexperience) {
                              return DropdownMenuItem(
                                  value: timeexperience,
                                  child: Text(
                                    timeexperience.toString(),
                                    overflow: TextOverflow.ellipsis,
                                  ));
                            }).toList(),
                            hint: Text("Tempo de Experiência"),
                            onChanged: (timeexperience) {

                            },
                            onTap: () => FocusScope.of(context).unfocus(),
                          ),
                          SizedBox(height: 15),
                          DropdownButtonFormField<String>(
                            isExpanded: true,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.6),
                              alignLabelWithHint: true,
                              contentPadding:const EdgeInsets.fromLTRB(20, 18, 20, 18),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  width: 1.18,
                                  color: Color(0xff1a1919),
                                ),
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                borderSide: BorderSide(
                                  width: 1.2,
                                  color: Colors.black,
                                ), //Color(0xff1a1919)
                              ),
                            ),
                            items: controller.typeService
                                .map((typeservice) {
                              return DropdownMenuItem(
                                  value: typeservice,
                                  child: Text(
                                    typeservice.toString(),
                                    overflow: TextOverflow.ellipsis,
                                  ));
                            }).toList(),
                            hint: Text("Tipo de Atendimento"),
                            onChanged: (typeservice) {

                            },
                            onTap: () => FocusScope.of(context).unfocus(),
                          ),
                          SizedBox(height: 15),


                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      controller.nameController.text.isNotEmpty &&
                          controller.emailController.text.isNotEmpty &&
                          controller.senhaController.text.isNotEmpty
                          ? FadeInDown(
                        delay: Duration(milliseconds: 200),
                        child: TextButton(
                          child: Text(
                            "Prosseguir",
                            style: GoogleFonts.nunito(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () {
                            if (controller.nameController.text.isEmpty &&
                                controller.emailController.text.isEmpty &&
                                controller.senhaController.text.isEmpty) {
                              print("Tem campo vazio");
                            } else {}
                          },
                        ),
                      )
                          : Container(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
