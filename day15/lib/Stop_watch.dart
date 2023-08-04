import 'package:flutter/material.dart';
import "dart:async";

class Stopwatch extends StatefulWidget {
  const Stopwatch({super.key});

  @override
  State<Stopwatch> createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  int seconds = 0;
  late Timer timer;
  bool isTicking = true;

  void _onTick(Timer timer) {
    setState(() {
      ++seconds;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stopwatch"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$seconds ${_secondsText()}",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: isTicking ? _startTimer : null,
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.green,
                      ),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                  child: Text(
                    "Start",
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: isTicking ? null : _stopTimer,
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: Text(
                    "Stop",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      isTicking = false;
    });
  }

  void _stopTimer() {
    timer.cancel();
    setState(() {
      isTicking = true;
    });
  }

  String _secondsText() => seconds <= 1 ? "second" : "seconds";
}
