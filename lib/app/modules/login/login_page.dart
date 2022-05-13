import 'package:animate_do/animate_do.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:profissa_app/app/modules/login/login_store.dart';
import 'package:flutter/material.dart';
import 'package:profissa_app/app/widgets/customCPFTextFormField.dart';
import '../../widgets/customPasswordTextFormField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends ModularState<LoginPage, LoginStore> {
  final LoginStore store = Modular.get();
  TextEditingController _loginCPFController = TextEditingController();
  TextEditingController _loginPasswordController = TextEditingController();

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
            title: Text(
              'Login',
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
                Image.asset(
                  'lib/app/assets/images/logo.png',
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height * 0.34,
                  width: MediaQuery.of(context).size.width * 0.75,
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
              ],
            ),
          ),
        ),

      ),
    );
  }
}