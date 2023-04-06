import 'package:flutter/material.dart';

enum PieceColor {
  black,
  white,
}

class Piece extends StatelessWidget {
  const Piece({
    Key? key,
    required this.color,
  }) : super(key: key);

  final PieceColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color == PieceColor.black ? Colors.black : Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
      ),
    );
  }
}
