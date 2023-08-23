import 'package:flutter/material.dart';
import 'package:icodegram_app/components/storyview.dart';
import 'package:icodegram_app/models/data.dart';

Widget storyButton(StoryData story, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(50.0),
          onTap: () {
            Navigator.push(context, new MaterialPageRoute(builder: (context)=> StoryView(story: story,)));
          },
          child: Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
                   // Stories border //
              // border: Border.all(color: Colors.orangeAccent, width: 2),
            ),
            child: Padding(
              padding: EdgeInsets.all(3),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: NetworkImage(story.avatarUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Padding(padding: EdgeInsets.all(3),
          child: Text(story.userName),),
      ],
      
    ),
  );
}
