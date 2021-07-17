import 'package:coffeeapp/components/AccountCheck.dart';//ນຳເຂົ້າ AccountCheck
import 'package:coffeeapp/components/RoundButton.dart';//ນຳເຂົ້າ RoundButton
import 'package:coffeeapp/components/RoundInput.dart';//ນຳເຂົ້າ RoundInput
import 'package:coffeeapp/components/RoundPassword.dart';//ນຳເຂົ້າ RountPassword
import 'package:coffeeapp/components/background.dart';//ນຳເຂົ້າ background
import 'package:coffeeapp/constrain.dart';//ນຳເຂົ້າ constraint
import 'package:coffeeapp/screen/signup.dart';//ນຳເຂົ້າ signup
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ຕັ້ງ Stack
    return Stack(
      children: [
        // Background
        Background(
          imagePath: 'assets/images/background-login.jpg',
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //ຂໍ້ຄວາມ
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

                  //ຊ່ອງພິມອີເມວ
                  RoundInput(
                    hintText: 'Your Email',
                    onChange: (value) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //ຊ່ອງພິມລະຫັດ
                  RoundPassword(
                    onChange: (value) {},
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  //ປຸ່ມລ໊ອກອິນ
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

                  //ຂໍ້ຄວາມ
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
