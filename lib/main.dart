import 'package:first_app/pages/home.dart';
import 'package:first_app/pages/login.dart';
import 'package:first_app/utils/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: Themes.lightTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        MyRoutes.HomeRoute: (context) => const Home(),
        MyRoutes.LoginRoute: (context) => const Login()
      },
    );
  }
}
