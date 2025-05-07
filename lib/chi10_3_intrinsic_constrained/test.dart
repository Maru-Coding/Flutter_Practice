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

        body: Column(
          children: [
            // 위젯 가로 크기를 고정하는 IntrinsicWidth
            IntrinsicWidth(
              child: Column(
                // 아래 crossAxisAlignment를 지정해야만 크기가 가장 큰 위젯의 크기대로 고정됨
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(color: Colors.red, width: 50, height: 50.0),
                  Container(color: Colors.green, width: 150.0, height: 150.0),
                  Container(color: Colors.blue, width: 100, height: 100.0),
                ],
              ),
            ),

            // 최소/최대 범위로 크기 고정하는 ConstrainedBox
            ConstrainedBox(
              // 최소 너비 300, 최대 높이 50
              constraints: BoxConstraints(minWidth: 300, maxHeight: 50),
              child: Container(color: Colors.amber, width: 150, height: 150.0),
            ),
          ],
        ),
      ),
    );
  }
}
