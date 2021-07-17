import 'package:flutter/material.dart';

import '../constrain.dart';

class AccountCheck extends StatelessWidget {
  final bool login;//ໂຕປ່ຽນ login ໄວ້ເປັບຄ່າຂໍ້ເທັດຈິງ ເພື່ອກວດສອບວ່າຜູ້ໃຊ້ງານຢູ່ໜ້າໃດ ຖ້າເປັນໜ້າ login ຈະມີຄ່າເປັນ true
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
        //ຂໍ້ຄວາມ 
        Text(
          //ກວດສອບເງື່ອນໄຂ ຖ້າ login ມີຄ່າ true ຈະສະແດງ Don't have any account? 
          //ຖ້າ false ຈະສະແດງ Already have an account ?
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
