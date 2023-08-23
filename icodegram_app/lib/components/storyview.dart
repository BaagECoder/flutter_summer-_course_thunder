import 'dart:async';

import 'package:flutter/material.dart';
import '../models/data.dart';

class StoryView extends StatefulWidget {
  final StoryData story;

  StoryView({key, required this.story}) : super(key: key);

  @override
  State<StoryView> createState() => _StoryViewState();
}

class _StoryViewState extends State<StoryView> {
  double percent = 0.0;
  late Timer _timer;

  void startTimer(){
    _timer =Timer.periodic(Duration(microseconds: 5), (timer) {
      setState(() {
        percent += 0.001;
        if (percent > 1) {
          _timer.cancel();
          Navigator.pop(context);
        }
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.story.storyUrl),
              fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 36, horizontal: 8),
            child: Column(
              children: [
                LinearProgressIndicator(
                  value: percent,
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    CircleAvatar(backgroundImage: NetworkImage(widget.story.avatarUrl),
                    radius: 30),
                    SizedBox(
                      width: 8,
                    ),
                    Text(widget.story.userName, style: TextStyle(color: Colors.white, fontSize: 18),),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
