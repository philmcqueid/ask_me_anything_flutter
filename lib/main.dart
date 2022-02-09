import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        elevation: 0.0,
        title: const Center(child: Text('Me pergunte qualquer coisa')),
      ),
      body: const MagicBalls(),
    ),
  ));
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({Key? key}) : super(key: key);

  @override
  _MagicBallsState createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  @override
  Widget build(BuildContext context) {
    return const Text('Hello');
  }
}
