import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget{

  final IconData? appbarbtnIcon;
  final void Function()? appbarbtnAction;
  final Color btnColor;

  CircularButton({
    this.appbarbtnIcon,
    this.appbarbtnAction,
    this.btnColor=Colors.black,
});
  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        icon: Icon(appbarbtnIcon,color: Colors.black,), onPressed: appbarbtnAction,
        iconSize: 25,
      ),

    );
  }

}