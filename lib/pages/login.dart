import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Column(
          children: [
            Image.asset("assets/images/login_img.png"),
            const Text(
              "Login",
              style: TextStyle(
                fontSize: 24
              )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username"
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password"
                    ),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 12
                      ),
                    )
                  )
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
