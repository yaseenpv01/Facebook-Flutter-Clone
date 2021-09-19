import 'package:facebook_flutter/sections/headerbuttonSection.dart';
import 'package:facebook_flutter/widgets/avatar.dart';
import 'package:facebook_flutter/widgets/blueTick.dart';
import 'package:facebook_flutter/widgets/headerButton.dart';
import 'package:flutter/material.dart';

import 'assets.dart';

class PostCard extends StatelessWidget{

  final String? avatar;
  final String? titleText;
  final String? publishedHour;
  final String? titleString;
  final String? postImage;
  final bool showBlueTick;
  final String? likeCount;
  final String? shareCount;
  final String? commentCount;
  final String? roundAvatarFooter;

  PostCard({
    @required this.avatar,
    @required this.titleText,
    @required this.publishedHour,
    @required this.titleString,
    @required this.postImage,
    this.showBlueTick=false,
    @required this.likeCount,
    @required this.commentCount,
    @required this.shareCount,
    @required this.roundAvatarFooter

});
  @override
  Widget build(BuildContext context) {

    return Container(
      child: Column(
        children: [
          postCardHeader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(thickness: 1,color: Colors.grey[300],),
          HeaderButtonSection(button1: headerButtonSection(
            btnFunction: (){
              print("Like this post");
            },
            btnIcon: Icons.thumb_up_alt_outlined,
            btnColor: Colors.grey[700],
            btnText: "Like"
          ),
          button2: headerButtonSection(
            btnFunction: (){
              print("Comment on this post");
            },
            btnIcon: Icons.message_outlined,
            btnText: "Comment",
            btnColor: Colors.grey[700]
          ),
          button3: headerButtonSection(
            btnFunction: (){
              print("Share this post");
            },
            btnIcon: Icons.share_outlined,
            btnColor: Colors.grey[700],
            btnText: "Share"
          ),),

        ],
      ),
    );
  }

  Widget imageSection(){

    return Container(
      padding: EdgeInsets.only(top: 5,bottom: 5),
      child: Image.asset(postImage!),
    );
  }

  Widget titleSection(){

    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        titleString!,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget postCardHeader(){

    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(titleText!, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
          SizedBox(width: 10,),
          showBlueTick ? BlueTick() :SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedHour!),
          SizedBox(width: 10,),
          Icon(Icons.public,color: Colors.grey[700],size: 15,)
        ],
      ),
      trailing: IconButton(
        onPressed: (){
          print("Icon Pressed");
        },
        icon: Icon(Icons.more_horiz,color: Colors.grey[700],),
      ),
    );
  }

  Widget displayText({@required String? label}){

    return Text(label!,style: TextStyle(color: Colors.grey[700]),);

  }

  Widget footerSection(){

    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 10,right: 10),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                displayText(label: likeCount),
              ],
            ),
          ),

          Container(
            child: Row(
              children: [
                displayText(label: commentCount),
                displayText(label: "Comments"),
                SizedBox(width: 5,),
                displayText(label: shareCount),
                displayText(label: "Shares"),
                Avatar(displayImage: roundAvatarFooter,displayStatus: false,width: 25,height: 25,),
                IconButton(onPressed:(){
                  print("DropDown Pressed");
                },
                icon: Icon(Icons.arrow_drop_down,color: Colors.grey[700],),)

              ],
            ),
          ),
        ],
      ),

    );
  }

}