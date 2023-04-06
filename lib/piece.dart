import 'package:flutter/material.dart';

class Piece extends StatelessWidget {
  final bool isBlack;
  const Piece({required this.isBlack, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = isBlack ? Colors.black : Colors.white;
    final borderColor = isBlack ? Colors.white : Colors.black;
    return Container(
      width: 32.0,
      height: 32.0,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2.0),
      ),
    );
  }
}
