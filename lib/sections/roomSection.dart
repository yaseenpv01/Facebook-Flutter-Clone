import 'package:facebook_flutter/widgets/assets.dart';
import 'package:facebook_flutter/widgets/avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),

        children: [
          createRoomButton(),
          Avatar(displayImage: dulquer,displayStatus: true,),
          Avatar(displayImage: hrithik,displayStatus: true,),
          Avatar(displayImage: mammootty,displayStatus: true,),
          Avatar(displayImage: mohanlal,displayStatus: true,),
          Avatar(displayImage: prithviraj,displayStatus: true,),
          Avatar(displayImage: srk,displayStatus: true,),


        ],
      ),
    );
  }

  Widget createRoomButton(){
    return  OutlineButton.icon(
      borderSide: BorderSide(color: Colors.blue,width: 2),
      shape: StadiumBorder(),
      onPressed:(){
        print("Create Room Clicked");
      },icon: Icon(Icons.video_call,color: Colors.purple,),
      label: Text("Create \n Room",style: TextStyle(color: Colors.blue),),);
  }


}