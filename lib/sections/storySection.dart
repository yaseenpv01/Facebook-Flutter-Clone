import 'package:facebook_flutter/widgets/assets.dart';
import 'package:facebook_flutter/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(

      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            labelText: "Add To Story",
            avatar: dulquer,
            story: dulquer,
            createStoryStatus: true,
          ),
          StoryCard(
            labelText: "Hrithik",
            avatar: hrithik,
            story: yaseenpro,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mammootty",
            avatar: mammootty,
            story: yaseencover,
            displayBorder: true,
          ),
          StoryCard(
            labelText: "Mohanlal",
            avatar: mohanlal,
            story: yaseenpro,
            displayBorder: true,
          ),
        ],
      ),
    );
  }

}