// ignore_for_file: avoid_unnecessary_containers

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    Future.delayed(Duration(seconds: 5));
    var json = await rootBundle.loadString("assets/files/products.json");
    var decodeData = jsonDecode(json);
    var productData = decodeData["products"];
    CatalogModel.item = List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
    // List<Item> list = List.from(productData).map((e) => null).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      drawer: MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.item == null)
            ? Center(
              child: CircularProgressIndicator(),
            )
            : ListView.builder(
                itemCount: CatalogModel.item?.length,
                itemBuilder: (context, index) {
                  return ItemWidget(item: CatalogModel.item![index]);
                },
              ),
      ),
    );
  }
}
