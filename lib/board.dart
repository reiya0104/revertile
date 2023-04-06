import 'package:flutter/material.dart';

import 'piece.dart';

class Board extends StatefulWidget {
  const Board({
    Key? key,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BoardState createState() => _BoardState();
}

class _BoardState extends State<Board> {
  late double _boardSize;
  late double _pieceSize;
  static const double _maxBoardSize = 600;

  @override
  void initState() {
    super.initState();
    _boardSize = _maxBoardSize;
    _pieceSize = _boardSize / 8;
  }

  @override
  Widget build(BuildContext context) {
    final List<int> whitePieceIndexes = [27, 36];
    final List<int> blackPieceIndexes = [28, 35];

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          _boardSize = _maxBoardSize;
        } else {
          _boardSize = constraints.maxWidth;
        }
        _pieceSize = _boardSize / 8;
        return Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2,
            ),
            color: Colors.green,
          ),
          width: _boardSize,
          height: _boardSize,
          child: GridView.count(
            crossAxisCount: 8,
            children: List.generate(64, (index) {
              if (whitePieceIndexes.contains(index)) {
                return Piece(
                  color: PieceColor.white,
                  size: _pieceSize,
                );
              } else if (blackPieceIndexes.contains(index)) {
                return Piece(
                  color: PieceColor.black,
                  size: _pieceSize,
                );
              } else {
                return Container();
              }
            }),
          ),
        );
      },
    );
  }
}
