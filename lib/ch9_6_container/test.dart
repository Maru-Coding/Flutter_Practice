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

        // 영역을 표현하는 Container
        body: Container(
          height: Size.infinite.height,

          // 영역을 빨강-노랑 그라데이션으로 데코레이션
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.yellow],
            ),
          ),

          // 중앙 정렬 컨테이너
          child: Center(
            child: Container(
              margin: EdgeInsets.all(10.0), // 마진 값 지정하기 (all일 경우 상하좌우)
              decoration: BoxDecoration(
                shape: BoxShape.circle, // 원형 영역 만들기
                image: DecorationImage(
                  image: AssetImage('images/big.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
