// english_words 패키지 사용
// 임의의 영어 단어를 화면에 출력하는 예제

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // english_words 패키지 함수
    final wordPair = WordPair.random();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Center(
          child: Text('${wordPair.first}'),
        ),
      ),
    );
  }
}