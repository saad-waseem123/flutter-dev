import 'dart:ffi';

import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Login"),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login_img.png",fit: BoxFit.cover),
                const Text("Login", style: TextStyle(fontSize: 24)),
                const SizedBox(width: 50, height: 50,),
                Padding(
                    padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username"),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password"),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, MyRoutes.HomeRoute);
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(fontSize: 24),
                              ))
                        ],
                      ),
                    )
              ],
          )
        ),
      ),  
    );
  }
}
