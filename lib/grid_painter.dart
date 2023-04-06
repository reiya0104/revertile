import 'package:flutter/material.dart';

class GridPainter extends CustomPainter {
  final double boardSize;
  final int gridCount;
  final double boxBorderWidth;
  final double gridBorderWidth;
  final Color gridColor;

  GridPainter({
    required this.boardSize,
    required this.gridCount,
    required this.boxBorderWidth,
    required this.gridBorderWidth,
    required this.gridColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = gridColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = gridBorderWidth;

    for (var i = 1; i < gridCount; i++) {
      final x = i * boardSize / gridCount - boxBorderWidth;
      final y = i * boardSize / gridCount - boxBorderWidth;
      canvas.drawLine(
          Offset(0, y), Offset(boardSize - boxBorderWidth, y), paint);
      canvas.drawLine(
          Offset(x, 0), Offset(x, boardSize - boxBorderWidth), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
