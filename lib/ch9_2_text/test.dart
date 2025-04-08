import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 다트에서는 + 없이 '' 만으로 문자열 합치기가 가능하다.
  String longTxt =
      '동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라 만세. '
      '무궁화 삼천리 화려강산 대한사람 대한으로 길이 보전하세';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Hello World',
              style: TextStyle(
                fontWeight: FontWeight.bold, // 굵게
                fontStyle: FontStyle.italic, // 기울임꼴
                color: Colors.red,           // 글꼴 색상
                fontSize: 20, // 글자 크기 20
                height: 2,    // 줄 간
                backgroundColor: Colors.yellow,             // 바탕색
                decoration: TextDecoration.underline,       // 밑줄
                decorationColor: Colors.red,                // 밑줄 색상
                decorationStyle: TextDecorationStyle.wavy,  // 밑줄 모양
              ),
            ),

            Text(
              longTxt,
              style: TextStyle(
                fontSize: 20
              ),
              maxLines: 2,     // 줄 수 제한
              overflow: TextOverflow.fade,  // 줄 수 초과 시 흐리게 표시하기
            ),

            // 텍스트를 조합할 수 있는 RichText
            // 여러 개의 TextSpan 위젯을 합성하여 생성
            RichText(
                text: TextSpan(
                  text: 'HE',
                  style: TextStyle(fontSize:20, color: Colors.black),
                  children: [
                    TextSpan(
                      text:'L',
                      style: TextStyle(fontStyle: FontStyle.italic),
                      children: [
                        TextSpan(text: 'LO'),
                        TextSpan(
                          text: 'WO', style: TextStyle(color: Colors.red))
                      ]
                    ),
                    TextSpan(
                      text: 'RLD',
                      style: TextStyle(fontWeight: FontWeight.bold)
                    )
                  ]
                )
            )
          ],
        )
      ),
    );
  }
}
