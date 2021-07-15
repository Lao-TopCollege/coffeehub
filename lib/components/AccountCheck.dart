import 'package:flutter/material.dart';

import '../constrain.dart';

class AccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Don\'t have any account ? ' : 'Already have an account ? ',
          style: TextStyle(color: litePrimaryColor),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'SIGN UP' : 'LOGIN',
            style:
                TextStyle(color: litePrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
