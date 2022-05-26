import 'package:animate_do/animate_do.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/registration/store/registration_store.dart';
import 'package:flutter/material.dart';
import 'package:profissa_app/app/widgets/registration_default_text_field.dart';

import '../../../widgets/customCPFTextFormField.dart';

class ProfessionalPage extends StatefulWidget {
  const ProfessionalPage({
    Key? key,
  }) : super(key: key);

  @override
  _ProfessionalPageState createState() => _ProfessionalPageState();
}

class _ProfessionalPageState
    extends ModularState<ProfessionalPage, RegistrationStore> {
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
                                icon: const Icon(
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
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Observer(
                        builder: (_) => Column(
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
                                hintStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.6),
                                alignLabelWithHint: true,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(20, 18, 20, 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(
                                    width: 1.18,
                                    color: Color(0xff1a1919),
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(
                                    width: 1.2,
                                    color: Colors.black,
                                  ), //Color(0xff1a1919)
                                ),
                              ),
                              items:
                                  controller.typeOcupation.map((typeocupation) {
                                return DropdownMenuItem(
                                    value: typeocupation,
                                    child: Text(
                                      typeocupation.toString(),
                                      overflow: TextOverflow.ellipsis,
                                    ));
                              }).toList(),
                              hint: const Text("Tipo de Ocupação"),
                              onChanged: (typeocupation) {
                                controller.setOcupation(typeocupation.toString());
                              },
                              onTap: () => FocusScope.of(context).unfocus(),
                            ),
                            const SizedBox(height: 15),
                            DropdownButtonFormField<String>(
                              isExpanded: true,
                              decoration: InputDecoration(
                                hintStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.6),
                                alignLabelWithHint: true,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(20, 18, 20, 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(
                                    width: 1.18,
                                    color: Color(0xff1a1919),
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
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
                              hint: const Text("Tempo de Experiência"),
                              onChanged: (timeexperience) {
                                controller.setExperience(timeexperience.toString());
                              },
                              onTap: () => FocusScope.of(context).unfocus(),
                            ),
                            const SizedBox(height: 15),
                            DropdownButtonFormField<String>(
                              isExpanded: true,
                              decoration: InputDecoration(
                                hintStyle: const TextStyle(color: Colors.black),
                                filled: true,
                                fillColor: Colors.white.withOpacity(0.6),
                                alignLabelWithHint: true,
                                contentPadding:
                                    const EdgeInsets.fromLTRB(20, 18, 20, 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                focusedBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(
                                    width: 1.18,
                                    color: Color(0xff1a1919),
                                  ),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18)),
                                  borderSide: BorderSide(
                                    width: 1.2,
                                    color: Colors.black,
                                  ), //Color(0xff1a1919)
                                ),
                              ),
                              items: controller.typeService.map((typeservice) {
                                return DropdownMenuItem(
                                    value: typeservice,
                                    child: Text(
                                      typeservice.toString(),
                                      overflow: TextOverflow.ellipsis,
                                    ));
                              }).toList(),
                              hint: const Text("Tipo de Atendimento"),
                              onChanged: (typeservice) {
                                controller.setService(typeservice.toString());
                                if (typeservice == "Local próprio") {
                                  controller.changeService(true);
                                } else {
                                  controller.changeService(false);
                                }
                              },
                              onTap: () => FocusScope.of(context).unfocus(),
                            ),
                            const SizedBox(height: 15),
                            controller.isAthome
                                ? DropdownButtonFormField<String>(
                                    isExpanded: true,
                                    decoration: InputDecoration(
                                      hintStyle:
                                          const TextStyle(color: Colors.black),
                                      filled: true,
                                      fillColor: Colors.white.withOpacity(0.6),
                                      alignLabelWithHint: true,
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          20, 18, 20, 18),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      focusedBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)),
                                        borderSide: BorderSide(
                                          width: 1.18,
                                          color: Color(0xff1a1919),
                                        ),
                                      ),
                                      enabledBorder: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(18)),
                                        borderSide: BorderSide(
                                          width: 1.2,
                                          color: Colors.black,
                                        ), //Color(0xff1a1919)
                                      ),
                                    ),
                                    items: controller.typeServiceLocal
                                        .map((typeservicelocal) {
                                      return DropdownMenuItem(
                                          value: typeservicelocal,
                                          child: Text(
                                            typeservicelocal.toString(),
                                            overflow: TextOverflow.ellipsis,
                                          ));
                                    }).toList(),
                                    hint: const Text("Local do Atendimento"),
                                    onChanged: (typeservicelocal) {
                                      if (typeservicelocal ==
                                          "Cadastrar Novo Endereço") {
                                        controller.changeServiceLocal(true);
                                      } else {
                                        controller.changeServiceLocal(false);
                                      }
                                    },
                                    onTap: () =>
                                        FocusScope.of(context).unfocus(),
                                  )
                                : Container(),
                            const SizedBox(height: 15),
                            controller.isNewAddress
                                ? Column(
                                    children: <Widget>[
                                      TextFormField(
                                        style: GoogleFonts.nunito(
                                          color: Colors.grey[700],
                                          fontSize: 17,
                                        ),
                                        maxLength: 8,
                                        keyboardType: TextInputType.number,
                                        cursorColor: Colors.black,
                                        controller: controller.professionalCepController,
                                        decoration: InputDecoration(
                                          suffix: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 10),
                                            child: GestureDetector(
                                              child: Icon(Icons.search),
                                              onTap: () {
                                                controller.retornarInfosCep(
                                                    controller
                                                        .professionalCepController.text,"professional");
                                              },
                                            ),
                                          ),
                                          hintStyle:
                                              const TextStyle(color: Colors.black),
                                          hintText: "CEP",
                                          filled: true,
                                          fillColor:
                                              Colors.white.withOpacity(0.6),
                                          alignLabelWithHint: true,
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  20, 18, 20, 18),
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          focusedBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(18)),
                                            borderSide: BorderSide(
                                              width: 1.18,
                                              color: Color(0xff1a1919),
                                            ),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(18)),
                                            borderSide: BorderSide(
                                              width: 1.2,
                                              color: Colors.black,
                                            ), //Color(0xff1a1919)
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      RegistrationDefaultTextField(
                                          hintText: "Logradouro",
                                          textInputType: TextInputType.text,
                                          controller:
                                              controller.professionalLogradouroController,
                                          validation: (String value) {
                                            if (controller
                                                    .validateLogradouroField(
                                                        value) ==
                                                false) {
                                              return 'Insira o logradouro corretamente';
                                            }
                                          }),
                                      SizedBox(height: 15),
                                      RegistrationDefaultTextField(
                                          hintText: "Número",
                                          textInputType: TextInputType.text,
                                          controller:
                                              controller.professionalNumeroController,
                                          validation: (String value) {
                                            if (controller.validateNumeroField(
                                                    value) ==
                                                false) {
                                              return 'Insira o número corretamente';
                                            }
                                          }),
                                      SizedBox(height: 15),
                                      RegistrationDefaultTextField(
                                          hintText: "Complemento",
                                          textInputType: TextInputType.text,
                                          controller:
                                              controller.professionalComplementoController,
                                          validation: (String value) {
                                            if (controller
                                                    .validateLogradouroField(
                                                        value) ==
                                                false) {
                                              return 'Insira o complemento corretamente';
                                            }
                                          }),
                                      SizedBox(height: 15),
                                      RegistrationDefaultTextField(
                                          hintText: "Bairro",
                                          textInputType: TextInputType.text,
                                          controller:
                                              controller.professionalBairroController,
                                          validation: (String value) {
                                            if (controller
                                                    .validateLogradouroField(
                                                        value) ==
                                                false) {
                                              return 'Insira o Bairro corretamente';
                                            }
                                          }),
                                      SizedBox(height: 15),
                                      RegistrationDefaultTextField(
                                          hintText: "Cidade",
                                          textInputType: TextInputType.text,
                                          controller:
                                              controller.professionalCidadeController,
                                          validation: (String value) {
                                            if (controller
                                                    .validateLogradouroField(
                                                        value) ==
                                                false) {
                                              return 'Insira a Cidade corretamente';
                                            }
                                          }),
                                      SizedBox(height: 15),
                                      RegistrationDefaultTextField(
                                          hintText: "UF",
                                          textInputType: TextInputType.text,
                                          controller: controller.professionalUfController,
                                          validation: (String value) {
                                            if (controller
                                                    .validateUfField(value) ==
                                                false) {
                                              return 'Insira o UF completo';
                                            }
                                          }),
                                    ],
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Column(
                    children: [
                      controller.cpfController.text.isNotEmpty &&
                              controller.ocupationController.isNotEmpty &&
                                controller.experienceController.isNotEmpty &&
                                  controller.serviceController.isNotEmpty
                          ? FadeInDown(
                              delay: const Duration(milliseconds: 200),
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
                                  Modular.to.pushNamed("/registration/service");
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
