import 'package:flutter/material.dart';
import 'package:login_setup/src/utils/theme/themes_widgets/buttons_theme.dart';
import 'package:login_setup/src/utils/theme/themes_widgets/text_field_theme.dart';
import 'package:login_setup/src/utils/theme/themes_widgets/text_theme.dart';

class AppTheme{

  AppTheme._();


  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AppButtonTheme.lightOutlineButtonTheme,
    elevatedButtonTheme: AppButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
    outlinedButtonTheme: AppButtonTheme.darkOutlineButtonTheme,
    elevatedButtonTheme: AppButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: AppTextFormFieldTheme.darkInputDecorationTheme
  );

}