import 'package:flutter/material.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 8, // 横に8個のウィジェットを表示
      ),
      itemBuilder: (context, index) {
        // TODO: ウィジェットを作成する
        return Container();
      },
      itemCount: 64, // ウィジェットの数を指定
    );
  }
}
