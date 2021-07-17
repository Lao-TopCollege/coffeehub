import 'package:coffeeapp/components/background.dart';//ນຳເຂົ້າ background
import 'package:coffeeapp/components/body.dart'; //ນຳເຂົ້າ body
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //ກຳນົດເປັນຮູບແບບຂອງ Stack ຄືເປັນຊັ້ນຄ້າຍໆກັບ Layer ໃນ Photoshop
    return Stack(children: [
      //ເອີ້ນໃຊ້ງານສາກຫຼັງ
      Background(),
      
      //ກຳນົດໜ້າຫຼັກ
      Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          //ເອີ້ນໃຊ້ body
          child: Body(),
        ),
      )
    ]);
  }
}
