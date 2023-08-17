import 'package:flutter/material.dart';
import 'package:login_setup/src/constants/colors/colors.dart';

class AppTextFormFieldTheme{

  AppTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
       prefixIconColor: tSecondaryColor,
       floatingLabelStyle: const TextStyle(color: tSecondaryColor),
       focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: tSecondaryColor)
       )
  ); 

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
       border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
       prefixIconColor: tPrimaryColor,
       floatingLabelStyle: const TextStyle(color: tPrimaryColor),
       focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(width: 2,color: tPrimaryColor)
       )
  );

}