import 'package:flutter/material.dart';

import '../constrain.dart';

class RoundButton extends StatelessWidget {
  final String text;//ຂໍ້ຄວາມທີ່ຈະສະແດງເທິງປຸ່ມ
  final Color color, textColor, borderColor;//ສີພື້ນ, ສີຂໍ້ຄວາມ, ສີເສັ້ນ
  final Function press;
  final double borderWidth;
  final double width;
  const RoundButton({
    Key key,
    this.text,
    this.color = litePrimaryColor,
    this.textColor = darkPrimaryColor,
    this.press,
    this.borderColor = litePrimaryColor,
    this.borderWidth = 0,
    this.width = 0.8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      //BoxDecoration ສຳລັບຈັດຮູບຮ່າງຂອງປຸ່ມ
      decoration: BoxDecoration(
        //ກຳນົດສີພື້ນ
        color: color,

        //ກຳນົດຂອບມົນ
        borderRadius: BorderRadius.circular(29),

        //ກຳນົດເສັ້ນຂອບ
        border: Border.all(width: borderWidth, color: borderColor),
      ),

      //ກຳຂົດລວງກວ້າງຂອງປຸ່ມ
      width: size.width * width,

      //ກຳນົດປຸ່ມໃຫ້ຢູ່ໃນ child
      child: MaterialButton(
        //ເມື່ອປຸ່ມຖືກກົດ
        onPressed: press,
        //ຂໍ້ຄວາມເທິງປຸ່ມ
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
