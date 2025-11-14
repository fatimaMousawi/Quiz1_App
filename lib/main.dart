import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false, home: Feel());
  }
}

class Feel extends StatefulWidget {
  const Feel({super.key});

  State<Feel> createState() => _FeelState();
}

class _FeelState extends State<Feel> {
  String emoji = "❓";
  String quote = "Tap New Quote to get motivated";

  void feeling() {
    Random random = Random();
    int n = random.nextInt(2);

    setState(() {
      if (n == 0) {
        quote = "You can do it";
        emoji = "🚀";
      }
      if (n == 1) {
        quote = "Keep Going";
        emoji = "🖐";
      } else {
        quote = "Believe in youyself";
        emoji = "😍";
      }
    });
  }

  void reset() {
    setState(() {
      String emoji = "❓";
      String quote = "Tap New Quote to get motivated";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(quote, style: TextStyle(color: Colors.black, fontSize: 28)),
            SizedBox(height: 28),

            Text(emoji, style: TextStyle(fontSize: 28)),
            SizedBox(height: 28),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.green,
                  ),

                  onPressed: feeling,
                  child: Text(
                    "New Quote",
                    style: TextStyle(color: Colors.black),
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.black,
                  ),

                  onPressed: reset,
                  child: Text("Reset", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
