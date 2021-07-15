import 'package:coffeeapp/constrain.dart';
import 'package:coffeeapp/screen/login.dart';
import 'package:coffeeapp/screen/signup.dart';
import 'package:flutter/material.dart';

import 'RoundButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ດຶງຄ່າຄວາມກວ້າງຂອງຈໍເກັບໄວ້ໃນໂຕປ່ຽນ size
    Size size = MediaQuery.of(context).size;

    //ກົດເປັນ Cotainer
    return Container(
      //ກຳນົດລວງສູງ
      height: size.height,

      //ກຳນົດລວງກວ້າງ
      width: size.width,

      //ວາງອົງປະກອບໃຫ້ຢູ່ທາງກາງດ້ວຍ Center
      child: Center(
        //ຈັດວາງອົງປະກອບໃຫ້ເປັນລວງຕັ້ງດ້ວຍ Column
        child: Column(
          //ກຳນົດທຸກຢ່າງໃຫ້ຢູ່ກາງຈໍ ຕາມລວງຕັ້ງ
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //ຂໍ້ຄວາມຫົວຂໍຂອງແອັບ
            Text("COFFEE HUB",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: litePrimaryColor,
                    fontSize: 24)),

            //ຊ່ອງວ່າງ 50
            SizedBox(
              height: 50,
            ),

            //ປຸ່ມ Sign up
            RoundButton(
              text: 'SIGN UP',
              borderWidth: 2,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Signup();
                }));
              },
            ),

            //ຊ່ອງວ່າງ 20
            SizedBox(
              height: 20,
            ),

            //ປຸ່ມ Login
            RoundButton(
              text: 'LOGIN',
              color: darkPrimaryColor,
              textColor: litePrimaryColor,
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
              borderWidth: 2,
              borderColor: litePrimaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
