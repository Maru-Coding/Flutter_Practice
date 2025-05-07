import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 앱 바
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          elevation: 0,
          shape: Border(bottom: BorderSide(color: Colors.black, width: 2)),
        ),
      ),

      home: Scaffold(
        appBar: AppBar(title: Text('Test')),

        body: Stack(
          children: [
            Align(
              // 특정 위치에 배치하는 Alignment
              alignment: Alignment(0.0, 0.0), // 가운데에 배치
              child: Container(width: 150, height: 150, color: Colors.yellow),
            ),

            Align(
              // 왼쪽 위를 기준으로 배치하는 FractionalOffset
              alignment: FractionalOffset(1.0, 0.0), // 오른쪽 상단 배치
              child: Container(width: 150, height: 150, color: Colors.blue),
            ),

            // 상대 위치값으로 배치하기
            Positioned(
              left: 40.0,
              top: 40.0,
              child: Container(color: Colors.pink, height: 150.0, width: 150.0),
            ),
          ],
        ),
      ),
    );
  }
}
