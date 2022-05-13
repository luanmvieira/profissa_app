import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCPFTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final double fontSize;
  final Color fillColor;
  final Color borderColor;
  final Color fontColor;
  final TextInputType type;


  CustomCPFTextFormField(
      {Key? key,
        required this.controller,
        required this.labelText,
        this.fontSize = 3,
        required this.borderColor,
        required this.fontColor,
        required this.fillColor,
        required this.type,
        })
      : super(key: key);

  @override
  State<CustomCPFTextFormField> createState() => _CustomCPFTextFormFieldState();
}

class _CustomCPFTextFormFieldState extends State<CustomCPFTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.type,
      textAlign: TextAlign.start,
      controller: widget.controller,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CpfInputFormatter(),
      ],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      style: GoogleFonts.rhodiumLibre(
        color: widget.fontColor,
        fontSize: widget.fontSize,
      ),
      decoration: InputDecoration(
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
