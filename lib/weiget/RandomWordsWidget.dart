import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

/// 随机生成英文字符串
class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(wordPair.toString()),
    );
  }
}
