import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  final usernameController = TextEditingController();
  final passwordContorller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50,),

                  //logo
                  Icon(Icons.lock, size: 100),
                  const SizedBox(height: 50,),

                  //welcome back, you've been missed!
                  Text(
                    "Welcome back you\'ve been missed",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16
                    ),
                  ),
                  const SizedBox(height: 50,),


                  //username
                  MyTextField(
                    hintText: 'E-mail',
                    obscureText: false,
                    controller: usernameController,
                  ),
                  const SizedBox(height: 10,),

                  //pasword
                  MyTextField(
                    hintText: 'Password',
                    obscureText: true,
                    controller: passwordContorller,
                  )

                  //forgot password?

                  //sign in button

                  // or continue with

                  //google + apple sign in button

                  //not a member? register now
                ],
              ),
            )
        )

    );
  }
}

