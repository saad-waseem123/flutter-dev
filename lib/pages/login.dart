import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  formValidation(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
    }
  }

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
            Image.asset("assets/images/login_img.png", fit: BoxFit.cover),
            const Text("Login", style: TextStyle(fontSize: 24)),
            const SizedBox(
              width: 50,
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Username", labelText: "Username"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Username is required!';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password is required!';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                        onPressed: () => formValidation(context),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 24),
                        ))
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
