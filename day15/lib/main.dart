import 'package:flutter/material.dart';
import 'Stop_watch.dart';

void main() {
  runApp(StopwatchApp());
}

class StopwatchApp extends StatelessWidget {
  const StopwatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stopwatch(),
    );
  }
}
