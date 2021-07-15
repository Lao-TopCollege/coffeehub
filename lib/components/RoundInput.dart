import 'package:flutter/material.dart';

import '../constrain.dart';
import 'TextFieldContainer.dart';

class RoundInput extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChange;
  const RoundInput({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: darkPrimaryColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
