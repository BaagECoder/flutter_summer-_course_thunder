import 'package:flutter/material.dart';
import 'package:icodegram_app/components/layout_page.dart';
import 'package:icodegram_app/components/logo_widget.dart';
import 'package:icodegram_app/components/story_container.dart';
import 'package:icodegram_app/resources/story_modul.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Story> stories = [
    Story(imageUrl: 'url_to_story_1', username: 'user1'),
    Story(imageUrl: 'url_to_story_2', username: 'user2'),
    // Add more stories...
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "iCodegram",
          style: TextStyle(
            color: Color(0xFFFFFFFFF),
            fontFamily: "lobster",
            fontSize: 34,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
