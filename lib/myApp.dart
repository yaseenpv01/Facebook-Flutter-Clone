import 'package:facebook_flutter/sections/headerbuttonSection.dart';
import 'package:facebook_flutter/sections/roomSection.dart';
import 'package:facebook_flutter/sections/statusSection.dart';
import 'package:facebook_flutter/sections/storySection.dart';
import 'package:facebook_flutter/widgets/assets.dart';
import 'package:facebook_flutter/widgets/circularButton.dart';
import 'package:facebook_flutter/widgets/headerButton.dart';
import 'package:facebook_flutter/widgets/postCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget{

  Widget thickWidget=Divider(thickness: 10,color: Colors.grey[300],);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Facebook",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(appbarbtnIcon: Icons.search,appbarbtnAction: (){
              print("Goto Search Bar");
            },),
            CircularButton(appbarbtnIcon: Icons.chat,appbarbtnAction: (){
              print("Goto Chat Bar");
            },),
          ],
        ),

        body: ListView(
          children: [
            StatusSection(),
            Divider(thickness: 1,color: Colors.grey[300],),
            HeaderButtonSection(button1: headerButtonSection(
              btnFunction: (){
                print("Go Live");
              },
              btnIcon: Icons.video_call,
              btnColor: Colors.red,
              btnText: "Live"
            ),
            button2: headerButtonSection(
              btnFunction: (){
                print("Take Photo");
              },
              btnText: "Photo",
              btnColor: Colors.green,
              btnIcon: Icons.photo_album
            ),
            button3: headerButtonSection(
              btnFunction: (){
                print("Create Room");
              },
              btnIcon: Icons.video_call,
              btnColor: Colors.purple,
              btnText: "Room"
            ),),
            thickWidget,
            RoomSection(),
            thickWidget,
            StorySection(),
            thickWidget,
            PostCard(avatar: mohanlal, titleText: "Mohanlal",publishedHour: "5h",titleString: "Yaseen Muhammed",postImage: yaseencover,showBlueTick: true,likeCount: "10K",commentCount: "1K",shareCount: "2K",roundAvatarFooter: mohanlal,),
            thickWidget,
            PostCard(avatar: mammootty, titleText: "Mammootty", publishedHour: "2h", titleString: "Yaseen Profile", postImage: yaseenpro, likeCount: "25K", commentCount: "10K", shareCount: "5K",showBlueTick: true,roundAvatarFooter: mammootty,)

          ],
        ),
      ),
    );
  }

}