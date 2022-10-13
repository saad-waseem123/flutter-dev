import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Container(
          child: const Center(
              child: Text('Home'),
             ),
        ),
      ),
    );
  }
}