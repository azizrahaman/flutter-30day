// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
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
