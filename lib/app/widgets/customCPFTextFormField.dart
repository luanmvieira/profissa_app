import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCPFTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final double fontSize;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;
  final TextInputType type;


  CustomCPFTextFormField(
      {Key? key,
        required this.controller,
        this.fontSize = 3,
        required this.borderColor,
        required this.fontColor,
        required this.fillColor,
        required this.type,
        required this.hintText,
        })
      : super(key: key);

  @override
  State<CustomCPFTextFormField> createState() => _CustomCPFTextFormFieldState();
}

class _CustomCPFTextFormFieldState extends State<CustomCPFTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: GoogleFonts.nunito(
        color: Colors.grey[700],
        fontSize: 17,
      ),
      keyboardType: widget.type,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CpfOuCnpjFormatter(),
      ],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // validator: (value) => validation(value),
      cursorColor: Colors.black,
      controller: widget.controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.black),
        hintText: widget.hintText,
        filled: true,
        fillColor: Colors.white.withOpacity(0.6),
        alignLabelWithHint: true,
        contentPadding:EdgeInsets.fromLTRB(20, 18, 20, 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          borderSide: BorderSide(
            width: 1.18,
            color: Color(0xff1a1919),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          borderSide: BorderSide(
            width: 1.2,
            color: Colors.black,
          ), //Color(0xff1a1919)
        ),
      ),
    );
  }
}
