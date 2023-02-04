import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/home_page.dart';
import 'package:flutter_application_1/page/login.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoute.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Login(), 
        MyRoute.homeRoute: (context) => Homepage(), 
        MyRoute.loginRoute: (context) => Login()
      },
    );
  }
}
