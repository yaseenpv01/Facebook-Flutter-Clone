import 'package:flutter/material.dart';

Widget headerButtonSection({
  String? btnText,
  IconData? btnIcon,
  Color? btnColor,
  void Function()? btnFunction
}){
  return FlatButton.icon(onPressed:btnFunction,
    icon: Icon(btnIcon,
      color: btnColor,),
    label: Text(btnText!),
  );
}