import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme{

  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      headlineSmall: GoogleFonts.montserrat(
        color: Colors.black87,
        fontWeight: FontWeight.bold

      ),
      bodyLarge: GoogleFonts.poppins(
        color: Colors.black87
        
      ),

      titleLarge: GoogleFonts.montserrat(
        color: Colors.black87
        
        
      ),
      
    );

    

    static TextTheme darkTextTheme = TextTheme(
      headlineSmall: GoogleFonts.montserrat(
        color: Colors.white60,
        fontWeight: FontWeight.bold

      ),
      bodyLarge: GoogleFonts.poppins(
        color: Colors.white70
        
      ),

      titleLarge: GoogleFonts.montserrat(
        color: Colors.white70
        
      ),
      
    );
}