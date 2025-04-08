import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; // 폰트어섬 패키지

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // 버튼 누를때 onPressed 함수 호출
  onPressed() {
    print("Icon Clicked!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TEST')),

        body: Column(
          children: [
            // 플러터의 기본 아이콘 사용하기
            Icon(Icons.alarm, size: 100, color: Colors.red),

            // 폰트어섬의 아이콘 사용하기
            FaIcon(FontAwesomeIcons.bell, size: 100),

            // 아이콘 버튼 사용하기
            IconButton(
              onPressed: onPressed, // 클릭할 때 onPressed 호출
              icon: Icon(Icons.alarm, size: 100),
            ),
          ],
        ),
      ),
    );
  }
}
