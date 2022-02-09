import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo.shade900,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          elevation: 0.0,
          title: const Center(child: Text('Ask me anything')),
        ),
        body: const MagicBalls(),
      ),
    );
  }
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({Key? key}) : super(key: key);

  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  int ballNumber = 1;

  void changeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBall();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
