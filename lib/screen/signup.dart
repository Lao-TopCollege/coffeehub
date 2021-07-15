import 'package:coffeeapp/components/AccountCheck.dart';
import 'package:coffeeapp/components/RoundButton.dart';
import 'package:coffeeapp/components/RoundInput.dart';
import 'package:coffeeapp/components/RoundPassword.dart';
import 'package:coffeeapp/components/background.dart';
import 'package:coffeeapp/constrain.dart';
import 'package:coffeeapp/screen/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(
          imagePath: 'assets/images/background-signup.jpg',
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: SafeArea(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'SIGNUP',
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
                        text: 'SIGN UP',
                        press: () {},
                        color: darkPrimaryColor,
                        textColor: litePrimaryColor,
                        borderColor: litePrimaryColor,
                        borderWidth: 2,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      AccountCheck(
                        login: false,
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Login();
                          }));
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        height: 20,
                        color: litePrimaryColor,
                        thickness: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      RoundButton(
                        text: 'Sign up with FACEBOOK',
                        color: facebookColor,
                        textColor: Colors.white,
                        borderWidth: 0,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RoundButton(
                        text: 'Sign up with GOOGLE',
                        color: googleColor,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
