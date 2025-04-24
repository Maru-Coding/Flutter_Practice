import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱 바 푸른색으로 지정하기
      theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: Colors.blue)),

      home: Scaffold(
        appBar: AppBar(title: Text('Test')),

        // 스크롤 가능한 SingleChildScrollView
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                child: Row( // 가로로 배치하는 Row (세로는 Column)
                  mainAxisAlignment: MainAxisAlignment.center,  // 가로 중앙 정렬
                  crossAxisAlignment: CrossAxisAlignment.start, // 세로 위쪽 정렬
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue),
                  ],
                ),
              ),

              Container(
                color: Colors.yellow,
                margin: EdgeInsets.only(bottom: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,  // 가로 균등 정렬
                  crossAxisAlignment: CrossAxisAlignment.end, // 세로 아래쪽 정렬
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue),
                  ],
                ),
              ),

              Container(
                color: Colors.yellow,
                margin: EdgeInsets.only(bottom: 5),
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 간격 동일하게 정렬
                  crossAxisAlignment: CrossAxisAlignment.stretch, // 교차축 모두 차지하도록 배치
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue),
                  ],
                ),
              ),

              Container(
                color: Colors.yellow,
                margin: EdgeInsets.only(bottom: 5),
                height: 200,
                child: Stack( // 위젯 겹치기
                  children: [ // 맨 아래부터 빨강, 초록, 노랑 순서
                    Container(color: Colors.red),

                    Container(width: 100, height: 100, color: Colors.green),

                    Container(width: 50, height: 50, color: Colors.yellow),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
