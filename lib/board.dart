import 'package:flutter/material.dart';

import 'piece.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 8,
      children: List.generate(64, (index) {
        if (index == 27 || index == 36) {
          return const Piece(color: PieceColor.white);
        } else if (index == 28 || index == 35) {
          return const Piece(color: PieceColor.black);
        } else {
          return Container();
        }
      }),
    );
  }
}
