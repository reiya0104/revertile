import 'package:flutter/material.dart';

import 'piece.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pieces = List.generate(
      64,
      (index) => index % 2 == 0 ? PieceColor.black : PieceColor.white,
    );
    return GridView.builder(
      itemCount: 64,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemBuilder: (context, index) {
        return Piece(
          color: pieces[index],
        );
      },
    );
  }
}
