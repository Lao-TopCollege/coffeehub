import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String imagePath;
  const Background({
    Key key,
    this.imagePath = 'assets/images/background.jpeg',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken))),
    );
  }
}
