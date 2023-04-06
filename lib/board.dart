import 'package:flutter/material.dart';

import 'piece.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 64,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8,
      ),
      itemBuilder: (context, index) {
        // index に対応する駒の状態を取得するコードを記述する
        // 以下は仮実装
        final isBlack = index % 2 == 0;
        return Piece(
          color: isBlack ? PieceColor.black : PieceColor.white,
        );
      },
    );
  }
}
