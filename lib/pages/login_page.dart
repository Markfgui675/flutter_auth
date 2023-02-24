import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/components/my_button.dart';
import 'package:flutter_auth/components/my_textfield.dart';
import 'package:flutter_auth/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key});

  final usernameController = TextEditingController();
  final passwordContorller = TextEditingController();

  //sign user in
  void signUserIn(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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

                      //password
                      MyTextField(
                        hintText: 'Password',
                        obscureText: true,
                        controller: passwordContorller,
                      ),
                      const SizedBox(height: 20,),


                      //forgot password?
                      Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('Forgot Password?',
                                style: TextStyle(color: Colors.grey[600]),)
                            ]
                        ),
                      ),
                      const SizedBox(height: 25,),

                      //sign in button
                      MyButton(
                        onTap: signUserIn,
                      ),
                      const SizedBox(height: 50,),


                      // or continue with
                      Padding(padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: <Widget>[
                              Expanded(child:
                              Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              )),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text('Or continue with', style: TextStyle(color: Colors.grey[700]))),
                              Expanded(child:
                              Divider(
                                thickness: 0.5,
                                color: Colors.grey[400],
                              ))
                            ],
                          )),
                      const SizedBox(height: 25,),


                      //google + apple sign in button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //google
                          SquareTile(imagePath: 'images/google.png'),
                          const SizedBox(width: 25),
                          //apple
                          SquareTile(imagePath: 'images/apple.png')

                        ],
                      ),
                      const SizedBox(height: 50),

                      //not a member? register now
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Not a member?', style: TextStyle(color: Colors.grey[700])),
                          const SizedBox(width: 4),
                          Text('Register now!', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
                        ],
                      ),
                      const SizedBox(height: 25),

                    ],
                  ),
                ),
              ),
            )
        )

    );
  }
}

