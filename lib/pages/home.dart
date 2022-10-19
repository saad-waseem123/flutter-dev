import 'package:first_app/models/CatalogModel.dart';
import 'package:first_app/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../widgets/ItemWidget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData['products'];
    CatalogModel.items =
        List.from(productData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                ? ListView.builder(
                    itemCount: CatalogModel.items.length,
                    itemBuilder: (context, index) {
                      return ItemWidget(item: CatalogModel.items[index]);
                    },
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  )),
        drawer: const CustomDrawer(),
      ),
    );
  }
}
