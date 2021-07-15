import 'package:coffeeapp/components/AccountCheck.dart';
import 'package:coffeeapp/components/RoundButton.dart';
import 'package:coffeeapp/components/RoundInput.dart';
import 'package:coffeeapp/components/RoundPassword.dart';
import 'package:coffeeapp/components/background.dart';
import 'package:coffeeapp/constrain.dart';
import 'package:coffeeapp/screen/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(
          imagePath: 'assets/images/background-login.jpg',
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        color: litePrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  RoundInput(
                    hintText: 'Your Email',
                    onChange: (value) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoundPassword(
                    onChange: (value) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RoundButton(
                    text: 'LOGIN',
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signup();
                      }));
                    },
                    color: darkPrimaryColor,
                    textColor: litePrimaryColor,
                    borderColor: litePrimaryColor,
                    borderWidth: 2,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AccountCheck(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Signup();
                      }));
                    },
                  )
                ],
              ),
            )),
      ],
    );
  }
}
