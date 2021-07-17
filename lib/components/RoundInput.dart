import 'package:flutter/material.dart';
import '../constrain.dart';
import 'TextFieldContainer.dart';

class RoundInput extends StatelessWidget {
  final String hintText;//ຂໍ້ຄວາທີ່ສະແດງໃນຊ່ອງພິມ
  final IconData icon;//ໄອຄອນທີ່ສະແດງໃນຊ່ອງພິມ
  final ValueChanged<String> onChange;
  const RoundInput({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ຊ່ອງພິມຂໍ້ຄວາມ TextFieldContainer ເອີ້ນມາຈາກ TextFieldContainer.dart
    return TextFieldContainer(

      //ກຳນົດຊ່ອງພິມຂໍ້ຄວາມ
      child: TextField(

        //ກຳນົດຮູບແບບການສະແດງຜົນ
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
