import 'package:flutter/material.dart';
import 'board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Revertile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Revertile'),
        ),
        body: const Center(
          child: Board(),
        ),
      ),
    );
  }
}
