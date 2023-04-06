import 'package:flutter/material.dart';

enum PieceColor {
  black,
  white,
}

class Piece extends StatelessWidget {
  const Piece({
    Key? key,
    required this.color,
    required this.size, // ピースのサイズを追加する
  }) : super(key: key);

  final PieceColor color;
  final double size; // ピースのサイズを追加する

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
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
