import 'package:coffeeapp/components/background.dart';
import 'package:coffeeapp/components/body.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Background(),
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: Body(),
        ),
      )
    ]);
    // return Scaffold(
    //   body: Body(),
    // );
  }
}
