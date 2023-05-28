import 'dart:math';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title:  const Text(
          "Change Color",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
      ),
      backgroundColor: color,
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(Icons.color_lens_outlined),
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            color = _getColor();
          });
        },
        label: const Text("Press"),
      ),
    );
  }

  Color _getColor() {
    final random = Random();
    final r = random.nextInt(256);
    final g = random.nextInt(256);
    final b = random.nextInt(256);

    return Color.fromARGB(255, r, g, b);
  }
}
