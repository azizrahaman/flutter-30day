import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/home_page.dart';
import 'package:flutter_application_1/page/login.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.poppins().fontFamily,
        ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      
      routes: {
        "home": (context) => Homepage(),
        "/": (context) => Login()
      },
    );
  }
}
