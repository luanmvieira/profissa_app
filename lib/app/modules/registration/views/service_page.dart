import 'package:animate_do/animate_do.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/registration/store/registration_store.dart';
import 'package:flutter/material.dart';

import '../../../widgets/registration_default_text_field.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends ModularState<ServicePage, RegistrationStore> {
  final RegistrationStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: controller.uploading
            ? Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(top: 20),
                child: const SpinKitWave(
                  color: Colors.white,
                  size: 40,
                ))
            : Scaffold(
                body: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 15, left: 15, right: 15),
                    child: SafeArea(
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    margin: const EdgeInsets.only(
                                        top: 5.0, left: 5.0),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                      color: Colors.grey,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.work,
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
                                      decoration: const BoxDecoration(
                                          color: Colors.blueAccent,
                                          borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(40.0),
                                            topRight: Radius.circular(40.0),
                                          )),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.agriculture,
                                            size: 20.0,
                                          ),
                                          Flexible(
                                            child: Text(
                                              "Serviço",
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
                              child: Column(
                                children: <Widget>[
                                  RegistrationDefaultTextField(
                                      hintText: "Nome do Serviço",
                                      textInputType: TextInputType.text,
                                      controller:
                                          controller.nameServiceController,
                                      validation: (String value) {
                                        if (controller
                                                .validateServiceField(value) ==
                                            false) {
                                          return 'Insira o complemento corretamente';
                                        }
                                      }),
                                  const SizedBox(height: 15),
                                  RegistrationDefaultTextField(
                                      hintText: "Valor do Serviço",
                                      textInputType: TextInputType.number,
                                      textInputFormatter: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        RealInputFormatter(),
                                      ],
                                      controller:
                                          controller.valueServiceController,
                                      validation: (String value) {
                                        if (controller.validateValueField(value) ==
                                            false) {
                                          return 'Insira o complemento corretamente';
                                        }
                                      }),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blueAccent),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.white10),
                            ),
                            onPressed: () async {
                              await store.pickAndUploadImage();
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.camera_alt,
                                    size: 40,
                                  ),
                                  Text(
                                    "Carregar foto",
                                    style: GoogleFonts.rhodiumLibre(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              controller.nameServiceController.text
                                          .isNotEmpty &&
                                      controller.valueServiceController.text
                                          .isNotEmpty
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
                                        onPressed: () async {
                                          await store.CadastrarUser();
                                          await store.CadastrarService();
                                          if (controller.resultUsuario == true &&
                                              controller.resulService == true) {
                                            Modular.to.navigate('/');
                                          }
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
      ),
    );
  }
}
