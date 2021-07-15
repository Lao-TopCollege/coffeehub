import 'package:flutter/material.dart';

import '../constrain.dart';
import 'TextFieldContainer.dart';

class RoundPassword extends StatelessWidget {
  final ValueChanged<String> onChange;
  const RoundPassword({
    Key key,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: darkPrimaryColor,
            ),
            hintText: 'Password',
            suffixIcon: Icon(
              Icons.visibility,
              color: darkPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
