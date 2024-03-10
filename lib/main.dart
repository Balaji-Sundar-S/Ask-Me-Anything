import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: const Text(
            "Ask Me Anything",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Colors.blue[900],
        ),
        body: const Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int buttonImage = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Card(
                child: ListTile(
              title: Text(
                "Tap on the Disk to Reveal the Answer!!!",
                style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
              ),
            )),
            const SizedBox(
              height: 50.0,
            ),
            IconButton(
              icon: Center(
                child: Image.asset("images/ball$buttonImage.png"),
              ),
              onPressed: () {
                setState(() {
                  buttonImage = Random().nextInt(5) + 1;
                });
                Image.asset("images/ball$buttonImage.png");
              },
            ),
          ],
        ),
      ),
    );
  }
}
