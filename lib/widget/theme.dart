import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
<<<<<<< HEAD
      primarySwatch: Colors.deepPurple,
=======
      primarySwatch: Colors.purple,
>>>>>>> 76b6f3c8f688af4d527de9007717de3b4eb4aebf
      fontFamily: GoogleFonts.lato().fontFamily,
      iconTheme: IconThemeData(color: Colors.black),
      textTheme: Theme.of(context).textTheme);

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
