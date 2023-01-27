import 'package:flutter/material.dart';

import '../utils/routes.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.jpg",
              width: 200,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Enter Your Password", labelText: "Password"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(minimumSize: Size(150, 45)),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoute.homeRoute);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
