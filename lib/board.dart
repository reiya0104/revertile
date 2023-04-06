import 'package:flutter/material.dart';

import 'piece.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<int> whitePieceIndexes = [27, 36];
    final List<int> blackPieceIndexes = [28, 35];

    return GridView.count(
      crossAxisCount: 8,
      children: List.generate(64, (index) {
        if (whitePieceIndexes.contains(index)) {
          return const Piece(color: PieceColor.white);
        } else if (blackPieceIndexes.contains(index)) {
          return const Piece(color: PieceColor.black);
        } else {
          return Container();
        }
      }),
    );
  }
}
