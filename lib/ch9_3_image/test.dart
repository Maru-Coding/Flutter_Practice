import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TEST')),
        body: Column(
          children: [
            Image(
              image: NetworkImage(    // 네트워크 이미지 가져오기 (기기의 갤러리, URL 등 사용 가능)
                'https://flutter.github.io/assets-for-api-'
                'docs/assets/widgets/owl.jpg',
              ),
            ),

            Container(
              color: Colors.red,
              child: Image.asset(   // asset에서 이미지 불러오기
                'images/big.jpeg',
                width: 200,
                height: 100,
                fit: BoxFit.fill,   // 사이즈가 작더라도 위젯에 꽉 채워 출력하기
              ),
            ),
          ],
        ),
      ),
    );
  }
}
