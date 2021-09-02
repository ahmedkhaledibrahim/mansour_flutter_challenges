import 'package:flutter/material.dart';

Widget FormTextField(
{required String HintText,required IconData IconSymbol, required Color TextColor,required Color Bordercolor , required double BorderRadiusVal, required bool ObsecureText,required TextInputType keyboardType}
)=> TextFormField(
  obscureText: ObsecureText,
  keyboardType: keyboardType,
  style: TextStyle(
    color: TextColor,
    fontWeight: FontWeight.bold,
  ),
  decoration: InputDecoration(
      filled: true,
      fillColor: Color.fromARGB(255, 250, 250, 250),
      labelStyle: TextStyle(color: Colors.grey),
      prefixIcon: Icon(IconSymbol),
      hintText: HintText,
      hintStyle: TextStyle(fontWeight: FontWeight.normal),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(BorderRadiusVal)),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Bordercolor,
          ),
          borderRadius: BorderRadius.circular(BorderRadiusVal))),
);