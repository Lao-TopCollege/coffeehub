import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final String imagePath;//ກຳນົດ path ການຈັດເກັບຮູບ
  const Background({
    Key key,
    this.imagePath = 'assets/images/background.jpeg',//ກຳນົດ path ການຈັດເກັບຮູບ
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ໃຊ້ຮູບແບບ Container ເພື່ອເປັນບ່ອນໃນການສະແດງຮູບ
    return Container(

      //ກຳນົດກ່ອງທີ່ຈະເກັບຮູບ
      decoration: BoxDecoration(

        //ກຳນົດຮູບພາບ
        image: DecorationImage(

          //ເອີ້ນໃຊ້ຮູບພາບ
          image: AssetImage(imagePath),
          fit: BoxFit.cover,//ກຳນົດຮູບແບບຂອງການສະແດງຮູບ
          colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken))),//ກຳນົດສີ
    );
  }
}
