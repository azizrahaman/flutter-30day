// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    String name = "Aziz";
    int age = 20;

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Hi')),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('About'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 200,
          color: Color.fromARGB(255, 140, 216, 252),
          width: double.infinity,
          child: Column(
            children: [
              Expanded(child: Text("Hola")),
              Expanded(
                  child: ElevatedButton(
                style: TextButton.styleFrom(minimumSize: Size(10, 10)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go Back"),
              ))
            ],
          )
        ),
      ),
    );
  }
}
