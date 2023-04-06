import 'package:flutter/material.dart';

import 'piece.dart';

class Board extends StatelessWidget {
  const Board({
    Key? key,
    required this.pieceSize, // ピースのサイズを追加する
  }) : super(key: key);

  final double pieceSize; // ピースのサイズを追加する

  @override
  Widget build(BuildContext context) {
    final List<int> whitePieceIndexes = [27, 36];
    final List<int> blackPieceIndexes = [28, 35];

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: GridView.count(
        crossAxisCount: 8,
        children: List.generate(64, (index) {
          if (whitePieceIndexes.contains(index)) {
            return Piece(
              color: PieceColor.white,
              size: pieceSize,
            );
          } else if (blackPieceIndexes.contains(index)) {
            return Piece(
              color: PieceColor.black,
              size: pieceSize,
            );
          } else {
            return Container();
          }
        }),
      ),
    );
  }
}
