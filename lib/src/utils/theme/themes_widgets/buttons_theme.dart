import 'package:flutter/material.dart';

import '../../../constants/colors/colors.dart';

class AppButtonTheme{

  AppButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
         style: OutlinedButton.styleFrom(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
         foregroundColor: tSecondaryColor,
         side: const BorderSide(color: tSecondaryColor),
         padding: const EdgeInsets.symmetric(vertical: 20)
    ),
  );

  static final darkOutlineButtonTheme = OutlinedButtonThemeData(
         style: OutlinedButton.styleFrom(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
         foregroundColor: tWhiteColor,
         side: const BorderSide(color: tWhiteColor),
         padding: const EdgeInsets.symmetric(vertical: 20)
    )
  );

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: tWhiteColor,
          backgroundColor: tSecondaryColor,
          side: const BorderSide(color: tSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: 20)
     ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: tSecondaryColor,
          backgroundColor: tWhiteColor,
          side: const BorderSide(color: tSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: 20)
     ),
  );
  
}