import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.png')
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue'),
                  Text(
                      'V- Smart',
                    style: TextStyle(
                      fontSize: 50,
                      color: Colors.white,
                      shadows: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.green.shade900,
                          offset: Offset(3,3),
                        )
                      ]
                    ),
                  ),
                  Column(
                    children: [
                      SignInButton(
                        Buttons.Google,
                        onPressed: () {},
                      ),
                      SignInButtonBuilder(
                        text: 'Sign in with Email',
                        icon: Icons.email,
                        onPressed: () {},
                        backgroundColor: Colors.blueGrey[700],
                      ),
                      SignInButton(
                        Buttons.Facebook,
                        text: "Sign up with Facebook",
                        onPressed: () {},
                      ),
                      SignInButton(
                        Buttons.Apple,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  Text(
                      'Login means you agree the User Agreement and Pricavy Policy',
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
