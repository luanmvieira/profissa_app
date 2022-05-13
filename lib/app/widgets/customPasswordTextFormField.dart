import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../assets/customIcons_shared.dart';


class CustomPasswordTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final double fontSize;
  final Color iconColor;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;
  final Function validation;

  CustomPasswordTextFormField({
    Key? key,
    required this.labelText,
    required this.controller,
    required this.fontSize,
    required this.fillColor,
    required this.borderColor,
    required this.fontColor,
    required this.iconColor,
    required this.validation,
  }) : super(key: key);

  @override
  _CustomPasswordTextFormFieldState createState() =>
      _CustomPasswordTextFormFieldState();
}

class _CustomPasswordTextFormFieldState
    extends State<CustomPasswordTextFormField> {
  bool hidePassword = true;
  Icon passwordIcon = Icon(CustomIcons.eye, color: Colors.black);

  void showPass() {
    if (hidePassword == true) {
      hidePassword = false;
      passwordIcon = Icon(CustomIcons.eye, color: widget.iconColor);
    } else if (hidePassword == false) {
      hidePassword = true;
      passwordIcon = Icon(CustomIcons.eye_off, color: widget.iconColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      textAlign: TextAlign.start,
      controller: widget.controller,
      obscureText: hidePassword,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) => widget.validation(value),
      style: GoogleFonts.rhodiumLibre(
          color: widget.fontColor, fontSize: widget.fontSize),
      decoration: InputDecoration(
        // ignore: deprecated_member_use
        suffix: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            child: Icon(passwordIcon.icon),
            onTap: () {
              setState(() {
                showPass();
              });
            },
          ),
        ),
        labelText: widget.labelText,
        labelStyle: GoogleFonts.rhodiumLibre(
          color: widget.fontColor,
          fontSize: widget.fontSize - 2,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: widget.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: widget.borderColor),
        ),
      ),
    );
  }
}
