//ຟາຍກຳນົດຄ່າສີ
import 'package:coffeeapp/constrain.dart';
//ຟາຍໜ້າຫຼັກ
import 'package:coffeeapp/screen/welcome.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //ປິດສັນຍາລັກ debug
        debugShowCheckedModeBanner: false,

        //ກຳນົດຫົວຂໍ້ແອັບ
        title: 'Coffee App',

        //ກຳນົດ thmeme
        theme: ThemeData(
          primaryColor: darkPrimaryColor,
          scaffoldBackgroundColor: Colors.transparent,
        ),

        //ກຳນົດໜ້າຫຼັກເປັນໜ້າ Welcome
        home: Welcome());
  }
}
