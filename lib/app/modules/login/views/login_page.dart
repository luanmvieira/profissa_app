import 'package:animate_do/animate_do.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/login/store/login_store.dart';
import 'package:flutter/material.dart';
import 'package:profissa_app/app/widgets/customCPFTextFormField.dart';
import '../../../widgets/customPasswordTextFormField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends ModularState<LoginPage, LoginStore> {
  @override
  final LoginStore store = Modular.get();
  final TextEditingController _loginCPFController = TextEditingController();
  final TextEditingController _loginPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: FadeInUp(
        animate: true,
        duration: const Duration(milliseconds: 220),
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Profissa App - Login',
              style: GoogleFonts.rhodiumLibre(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.normal),
            ),
            backgroundColor: Colors.lightBlueAccent,
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                ),
                Image.asset(
                  'lib/app/assets/images/logo.png',
                  fit: BoxFit.fill,
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.40,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.75,
                ),
                Container(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomCPFTextFormField(
                    labelText: "CPF",
                    controller: _loginCPFController,
                    fillColor: Colors.grey,
                    borderColor: Colors.black,
                    fontColor: Colors.black,
                    fontSize: 18,
                    type: TextInputType.number,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: CustomPasswordTextFormField(
                    labelText: 'Senha',
                    controller: _loginPasswordController,
                    fillColor: Colors.grey,
                    borderColor: Colors.black,
                    fontColor: Colors.black,
                    iconColor: Colors.black,
                    fontSize: 18,
                    validation: (String value) {
                      if (controller.validatePasswordField(value) == false) {
                        return 'A Senha deve conter pelo menos 08 caracteres';
                      }
                    },
                  ),
                ),
                Container(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: GestureDetector(
                      child: Text(
                        'Esqueci minha senha',
                        style: GoogleFonts.rhodiumLibre(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      onTap: () {

                      },
                    ),
                  ),
                ),
                Container(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * 0.08,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width * 0.75,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(50),
                        backgroundColor: MaterialStateProperty.all(
                            Colors.lightBlueAccent),
                      ),
                      child: Text(
                          "Login",
                          style: GoogleFonts.rhodiumLibre(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                    ),
                      onPressed: (){

                      }),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 25),
                    child: GestureDetector(
                      child: Text(
                        'Cadastre-se',
                        style: GoogleFonts.rhodiumLibre(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.normal),
                      ),
                      onTap: () {
                        Modular.to.pushNamed("/registration");

                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),

      ),
    );
  }
}