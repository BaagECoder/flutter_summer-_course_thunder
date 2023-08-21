import 'package:flutter/material.dart';
import 'package:icodegram_app/resources/story_modul.dart';

class StoryWidget extends StatefulWidget {
  final List<Story> stories;

  StoryWidget({required this.stories});

  @override
  _StoryWidgetState createState() => _StoryWidgetState();
}

class _StoryWidgetState extends State<StoryWidget> {
  int _currentIndex = 0;

  void _showNextStory() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % widget.stories.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _showNextStory,
      child: Container(
        color: Colors.black,
        child: Center(
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: Image.network(
              widget.stories[_currentIndex].imageUrl,
              key: ValueKey<String>(_currentIndex.toString()),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
