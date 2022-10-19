import 'package:first_app/models/Products.dart';
import 'package:first_app/widgets/CustomDrawer.dart';
import 'package:flutter/material.dart';

import '../widgets/ItemWidget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(50, (index) => Products.products[0]);
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: ListView.builder(
              itemCount: dummyList.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: dummyList[index]);
              },
            )),
        drawer: const CustomDrawer(),
      ),
    );
  }
}
