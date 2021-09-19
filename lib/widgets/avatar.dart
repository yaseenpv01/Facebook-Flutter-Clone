import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Avatar extends StatelessWidget{

  final String? displayImage;
  final bool? displayStatus;
  final bool displayBorder;
  final double height;
  final double width;

  Avatar({

    this.displayImage,
    this.displayStatus,
    this.displayBorder=false,
    this.height=50,
    this.width=50

});
  @override
  Widget build(BuildContext context) {

    Widget statusIndicator;

    if(displayStatus==true){

      statusIndicator=Positioned(
        bottom: 0,
        right: 2.0,
        child: Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.greenAccent,
              border: Border.all(
                color: Colors.white,
                width: 2,
              )
          ),
        ),
      );

    }else{
      statusIndicator=SizedBox();
    }

    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayBorder
              ? Border.all(color: Colors.blueAccent,width: 3):Border()
          ),
          padding: EdgeInsets.only(left: 4,right: 4),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset(
                displayImage!,
                width: width,
                height: height,
              )),
        ),
        statusIndicator,

      ],
    );

  }



}