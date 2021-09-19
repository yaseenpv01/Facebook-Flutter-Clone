import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget{

  final Widget? button1;
  final Widget? button2;
  final Widget? button3;

  HeaderButtonSection({

    @required this.button1,
    @required this.button2,
    @required this.button3,

});


  @override
  Widget build(BuildContext context) {

    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          button1!,
          VerticalDivider(thickness: 1,color: Colors.grey[300],),
          button2!,
          VerticalDivider(thickness: 1,color: Colors.grey[300],),
          button3!,
        ],
      ),
    );
  }

}